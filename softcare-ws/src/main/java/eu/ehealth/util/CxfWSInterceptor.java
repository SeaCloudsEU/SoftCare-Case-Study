package eu.ehealth.util;

import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.cxf.common.logging.LogUtils;
import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.interceptor.AbstractLoggingInterceptor;
import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.interceptor.LoggingInInterceptor;
import org.apache.cxf.interceptor.LoggingMessage;
import org.apache.cxf.io.CachedOutputStream;
//import org.apache.cxf.io.CachedWriter;
import org.apache.cxf.io.DelegatingInputStream;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.Phase;
import org.apache.cxf.service.model.EndpointInfo;
import org.apache.cxf.service.model.InterfaceInfo;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbQueries;


/**
 * 
 * @author a572832
 *
 */
public class CxfWSInterceptor extends AbstractLoggingInterceptor
{


	private static final Logger LOG = LogUtils.getLogger(LoggingInInterceptor.class);


	/**
	 * Constructor
	 */
	public CxfWSInterceptor()
	{
		super(Phase.RECEIVE);
	}


	/**
	 * Constructor
	 * 
	 * @param phase
	 */
	public CxfWSInterceptor(String phase)
	{
		super(phase);
	}


	/**
	 * Constructor
	 * 
	 * @param id
	 * @param phase
	 */
	public CxfWSInterceptor(String id, String phase)
	{
		super(id, phase);
	}


	/**
	 * Constructor
	 * 
	 * @param lim
	 */
	public CxfWSInterceptor(int lim)
	{
		this();
		limit = lim;
	}


	/**
	 * Constructor
	 * 
	 * @param id
	 * @param lim
	 */
	public CxfWSInterceptor(String id, int lim)
	{
		this(id, Phase.RECEIVE);
		limit = lim;
	}


	/**
	 * Constructor
	 * 
	 * @param w
	 */
	public CxfWSInterceptor(PrintWriter w)
	{
		this();
		this.writer = w;
	}


	/**
	 * Constructor
	 * 
	 * @param id
	 * @param w
	 */
	public CxfWSInterceptor(String id, PrintWriter w)
	{
		this(id, Phase.RECEIVE);
		this.writer = w;
	}


	/**
	 * 
	 */
	public void handleMessage(Message message) throws Fault
	{
		Logger logger = getMessageLogger1(message);
		
		if (SystemDictionary.ACTIVATE_INTERCEPTOR_DB) {
			loggingToDB(logger, message);
		}
		else if (writer != null || logger.isLoggable(Level.INFO))
		{
			logging(logger, message);
		}
	}
	

	/**
	 * 
	 * @param message
	 * @return
	 */
	private Logger getMessageLogger1(Message message) {
        EndpointInfo endpoint = message.getExchange().getEndpoint().getEndpointInfo();
        if (endpoint.getService() == null) 
        {
            return getLogger();
        }
        
        Logger logger = endpoint.getProperty("MessageLogger", Logger.class);
        if (logger == null) 
        {
            String serviceName = endpoint.getService().getName().getLocalPart();
            InterfaceInfo iface = endpoint.getService().getInterface();
            String portName = endpoint.getName().getLocalPart();
            String portTypeName = iface.getName().getLocalPart();
            String logName = "org.apache.cxf.services." + serviceName + "." + portName + "." + portTypeName;
            logger = LogUtils.getL7dLogger(this.getClass(), null, logName);
            endpoint.setProperty("MessageLogger", logger);
        }
        return logger;
    }


	/**
	 * 
	 * @param logger
	 * @param message
	 */
	protected void logging(Logger logger, Message message)
	{
		try 
		{
			if (message.containsKey(LoggingMessage.ID_KEY))
			{
				return;
			}
			String id = (String) message.getExchange().get(LoggingMessage.ID_KEY);
			if (id == null)
			{
				id = LoggingMessage.nextId();
				message.getExchange().put(LoggingMessage.ID_KEY, id);
			}
			message.put(LoggingMessage.ID_KEY, id);
			final LoggingMessage buffer = new LoggingMessage("Inbound Message\n----------------------------", id);
	
			Integer responseCode = (Integer) message.get(Message.RESPONSE_CODE);
			if (responseCode != null)
			{
				buffer.getResponseCode().append(responseCode);
			}
	
			String encoding = (String) message.get(Message.ENCODING);
	
			if (encoding != null)
			{
				buffer.getEncoding().append(encoding);
			}
			String httpMethod = (String) message.get(Message.HTTP_REQUEST_METHOD);
			if (httpMethod != null)
			{
				buffer.getHttpMethod().append(httpMethod);
			}
			String ct = (String) message.get(Message.CONTENT_TYPE);
			if (ct != null)
			{
				buffer.getContentType().append(ct);
			}
			Object headers = message.get(Message.PROTOCOL_HEADERS);
	
			if (headers != null)
			{
				buffer.getHeader().append(headers);
			}
			String uri = (String) message.get(Message.REQUEST_URL);
			if (uri == null)
			{
				String address = (String) message.get(Message.ENDPOINT_ADDRESS);
				uri = (String) message.get(Message.REQUEST_URI);
				if (uri != null && uri.startsWith("/"))
				{
					if (address != null && !address.startsWith(uri))
					{
						if (address.endsWith("/") && address.length() > 1)
						{
							address = address.substring(0, address.length());
						}
						uri = address + uri;
					}
				}
				else
				{
					uri = address;
				}
			}
			if (uri != null)
			{
				buffer.getAddress().append(uri);
				String query = (String) message.get(Message.QUERY_STRING);
				if (query != null)
				{
					buffer.getAddress().append("?").append(query);
				}
			}
	
			if (!isShowBinaryContent() && isBinaryContent(ct))
			{
				buffer.getMessage().append(BINARY_CONTENT_MESSAGE).append('\n');
				log(logger, buffer.toString());
				return;
			}
	
			InputStream is = message.getContent(InputStream.class);
			if (is != null)
			{
				CachedOutputStream bos = new CachedOutputStream();
				if (threshold > 0)
				{
					bos.setThreshold(threshold);
				}
				try
				{
					// use the appropriate input stream and restore it later
					InputStream bis = is instanceof DelegatingInputStream ? ((DelegatingInputStream) is).getInputStream() : is;
	
					IOUtils.copyAndCloseInput(bis, bos);
					bos.flush();
					bis = bos.getInputStream();
	
					// restore the delegating input stream or the input stream
					if (is instanceof DelegatingInputStream)
					{
						((DelegatingInputStream) is).setInputStream(bis);
					}
					else
					{
						message.setContent(InputStream.class, bis);
					}
	
					if (bos.getTempFile() != null)
					{
						// large thing on disk...
						buffer.getMessage().append("\nMessage (saved to tmp file):\n");
						buffer.getMessage().append("Filename: " + bos.getTempFile().getAbsolutePath() + "\n");
					}
					if (bos.size() > limit)
					{
						buffer.getMessage().append("(message truncated to " + limit + " bytes)\n");
					}
					writePayload(buffer.getPayload(), bos, encoding, ct);
					
					// store SOAP message in DB
					if (SystemDictionary.ACTIVATE_INTERCEPTOR_DB) {
						SystemDictionary.webguiLog("INFO", buffer.getPayload().toString());
					}
	
					bos.close();
				}
				catch (Exception e)
				{
					SystemDictionary.logException(e);
				}
			}
			else
			{
				Reader reader = message.getContent(Reader.class);
				if (reader != null)
				{
					try
					{
						/*CachedWriter writer = new CachedWriter();
						IOUtils.copyAndCloseInput(reader, writer);
						message.setContent(Reader.class, writer.getReader());
	
						if (writer.getTempFile() != null)
						{
							// large thing on disk...
							buffer.getMessage().append("\nMessage (saved to tmp file):\n");
							buffer.getMessage().append("Filename: " + writer.getTempFile().getAbsolutePath() + "\n");
						}
						if (writer.size() > limit)
						{
							buffer.getMessage().append("(message truncated to " + limit + " bytes)\n");
						}
						writer.writeCacheTo(buffer.getPayload(), limit);*/
					}
					catch (Exception e)
					{
						SystemDictionary.logException(e);
					}
				}
			}
			log(logger, formatLoggingMessage(buffer));
		}
		catch (Exception e1)
		{
			SystemDictionary.logException(e1);
		}
	}
	
	
	/**
	 * 
	 * @param logger
	 * @param message
	 */
	protected void loggingToDB(Logger logger, Message message)
	{
		try 
		{
			if (message.containsKey(LoggingMessage.ID_KEY))
			{
				return;
			}
			String id = (String) message.getExchange().get(LoggingMessage.ID_KEY);
			if (id == null)
			{
				id = LoggingMessage.nextId();
				message.getExchange().put(LoggingMessage.ID_KEY, id);
			}
			message.put(LoggingMessage.ID_KEY, id);
			final LoggingMessage buffer = new LoggingMessage("Inbound Message\n----------------------------", id);
	
			Integer responseCode = (Integer) message.get(Message.RESPONSE_CODE);
			if (responseCode != null)
			{
				buffer.getResponseCode().append(responseCode);
			}
	
			String encoding = (String) message.get(Message.ENCODING);
	
			if (encoding != null)
			{
				buffer.getEncoding().append(encoding);
			}
			String httpMethod = (String) message.get(Message.HTTP_REQUEST_METHOD);
			if (httpMethod != null)
			{
				buffer.getHttpMethod().append(httpMethod);
			}
			String ct = (String) message.get(Message.CONTENT_TYPE);
			if (ct != null)
			{
				buffer.getContentType().append(ct);
			}
			Object headers = message.get(Message.PROTOCOL_HEADERS);
	
			if (headers != null)
			{
				buffer.getHeader().append(headers);
			}
			String uri = (String) message.get(Message.REQUEST_URL);
			if (uri == null)
			{
				String address = (String) message.get(Message.ENDPOINT_ADDRESS);
				uri = (String) message.get(Message.REQUEST_URI);
				if (uri != null && uri.startsWith("/"))
				{
					if (address != null && !address.startsWith(uri))
					{
						if (address.endsWith("/") && address.length() > 1)
						{
							address = address.substring(0, address.length());
						}
						uri = address + uri;
					}
				}
				else
				{
					uri = address;
				}
			}
			if (uri != null)
			{
				buffer.getAddress().append(uri);
				String query = (String) message.get(Message.QUERY_STRING);
				if (query != null)
				{
					buffer.getAddress().append("?").append(query);
				}
			}
	
			if (!isShowBinaryContent() && isBinaryContent(ct))
			{
				buffer.getMessage().append(BINARY_CONTENT_MESSAGE).append('\n');
				log(logger, buffer.toString());
				return;
			}
	
			InputStream is = message.getContent(InputStream.class);
			if (is != null)
			{
				CachedOutputStream bos = new CachedOutputStream();
				if (threshold > 0)
				{
					bos.setThreshold(threshold);
				}
				try
				{
					// use the appropriate input stream and restore it later
					InputStream bis = is instanceof DelegatingInputStream ? ((DelegatingInputStream) is).getInputStream() : is;
	
					IOUtils.copyAndCloseInput(bis, bos);
					bos.flush();
					bis = bos.getInputStream();
	
					// restore the delegating input stream or the input stream
					if (is instanceof DelegatingInputStream)
					{
						((DelegatingInputStream) is).setInputStream(bis);
					}
					else
					{
						message.setContent(InputStream.class, bis);
					}
	
					if (bos.getTempFile() != null)
					{
						// large thing on disk...
						buffer.getMessage().append("\nMessage (saved to tmp file):\n");
						buffer.getMessage().append("Filename: " + bos.getTempFile().getAbsolutePath() + "\n");
					}
					if (bos.size() > limit)
					{
						buffer.getMessage().append("(message truncated to " + limit + " bytes)\n");
					}
					writePayload(buffer.getPayload(), bos, encoding, ct);
					
					// store SOAP message in DB
					if (SystemDictionary.ACTIVATE_INTERCEPTOR_DB) {
						
						DbQueries sqlInsert = new DbQueries();
						sqlInsert.storeSOAPMsg(buffer.getPayload().toString(), "IN");
						
						//SystemDictionary.webguiLog("INFO", buffer.getPayload().toString());
					}
	
					bos.close();
				}
				catch (Exception e)
				{
					SystemDictionary.logException(e);
				}
			}
		}
		catch (Exception e1)
		{
			SystemDictionary.logException(e1);
		}
	}


	protected String formatLoggingMessage(LoggingMessage loggingMessage)
	{
		return loggingMessage.toString();
	}


	@Override
	protected Logger getLogger()
	{
		return LOG;
	}

	
}
