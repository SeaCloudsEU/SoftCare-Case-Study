using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using EHealth.ClientApplication.Properties;
using System.Diagnostics;
using EHealth.ClientApplication.Windows;


namespace EHealth.ClientApplication
{


    public delegate void LoggedInEventHandler(object sender);


    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {


        public static App ThisApp { get; private set; }
        private static bool _IsUserAuthenticated;
        public static bool IsUserAuthenticated
        {
            get
            {
                return _IsUserAuthenticated;
            }

            set
            {
                _IsUserAuthenticated = value;
                if (App.LoggedIn != null)
                    App.LoggedIn(null);
            }
        }
        public static string DisclaimerText;
        public static bool HasDisclaimer { get; set; }
        public static string CurrentUserID;
        public static string CurrentUserName;
        public static string PatientID;
        public static aladdinService.SystemParameter DefaultLanguage;
        public static aladdinService.SystemParameter DefaultLocale;
        public static bool OptionsLocked { get; set; }
        public static string ServerAddress;
        public static string UpdatesAddress;
        public static string LoginErrorMessage { get; set; }
        public static string WellcomeMessage { get; set; }
        public static string WellcomeALADDINMessage { get; set; }
        public static List<aladdinService.Task> ActiveTasks { get; set; }
        public static string PatientQuestionnaireTempPath { get; set; }
        public static event LoggedInEventHandler LoggedIn;
        public static aladdinService.MediaContent[] EducationContent;
        public static aladdinService.MediaContent[] EntertainmentContent;
        public static aladdinService.MediaContent[] GamesContent;
        public static string DataReadMsg;
        public static string StepsMsg;
        public static string PressTheSendButtonMsg;
        public static string ErrorReadingMsg;
        public static string DeviceNotFoundMsg;
        public static string ForumPage;
        // user type
        public static string UserType;


        /// <summary>
        /// 
        /// </summary>
        private void UpgradeUserSettings()
        {
            if (Settings.Default.JustUpgraded)
            {
                Settings.Default.Upgrade();
                Settings.Default.JustUpgraded = false;
                Settings.Default.Save();
            }
        }


        /// <summary>
        /// 
        /// </summary>
        public App()
        {
            UpgradeUserSettings();

            System.Net.ServicePointManager.ServerCertificateValidationCallback +=
            delegate(object sender, X509Certificate cert, X509Chain chain, SslPolicyErrors sslError)
            {
                bool validationResult = true;
                return validationResult;
            };

            this.DispatcherUnhandledException += new System.Windows.Threading.DispatcherUnhandledExceptionEventHandler(OnDispatcherUnhandledException);

            App.ThisApp = this;

            /////////////////////////////
            // PARCHE TEMPORAL
            // TODO
            this.InitializeComponent();
            /////////////////////////////

            try
            {
                //AutoUpdater.CheckForUpdates();
            }
            catch (Exception)
            {
                //MessageBox.Show("Please check Internet connection!", "ALADDIN", MessageBoxButton.OK, MessageBoxImage.Error);
                //return;
            }

            // avialable media content
            LoadContent();

            /////////////////////////////
            // PARCHE TEMPORAL
            // TODO
            MainWindow main = new MainWindow();
            /////////////////////////////
        }


        /// <summary>
        /// 
        /// </summary>
        private void LoadContent()
        {
            try
            {
                // Load Content...
                using (aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService())
                {
                    try 
                    {
                        aladdinService.SystemParameter[] res = sc.ListOfSupportedLocales();
                    }
                    catch (Exception ex) 
                    {
                        MessageBox.Show("Error : " + ex.Message, Config.APP_NAME, MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    // search criteria
                    aladdinService.SearchCriteria sc1 = new aladdinService.SearchCriteria();
                    sc1.FieldName = "category";
                    sc1.CompareOp = new aladdinService.SystemParameter();
                    sc1.CompareOp.Code = "3";
                
                    aladdinService.SearchCriteria sc2 = new aladdinService.SearchCriteria();
                    sc2.FieldName = "enabled";
                    sc2.FieldValue1 = "1"; // 1...true, 0...false
                    sc2.CompareOp = new aladdinService.SystemParameter();
                    sc2.CompareOp.Code = "3";

                    // education
                    sc1.FieldValue1 = "education";
                    EducationContent = sc.GetMediaContent(new aladdinService.SearchCriteria[] { sc1, sc2 }, null);
                    // games
                    sc1.FieldValue1 = "games";
                    GamesContent = sc.GetMediaContent(new aladdinService.SearchCriteria[] { sc1, sc2 }, null);
                    // entertainment
                    sc1.FieldValue1 = "entertainment";
                    EntertainmentContent = sc.GetMediaContent(new aladdinService.SearchCriteria[] { sc1, sc2 }, null);
                }
            }
            catch (Exception) { }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected virtual void OnDispatcherUnhandledException(object sender, System.Windows.Threading.DispatcherUnhandledExceptionEventArgs e)
        {
            e.Handled = true;
            MessageBox.Show(e.Exception.Message, Config.APP_NAME, MessageBoxButton.OKCancel, MessageBoxImage.Error);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Application_Exit(object sender, ExitEventArgs e)
        {
            Settings.Default.Save();
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Application_Startup(object sender, StartupEventArgs e)
        {
            bool isFirstInstallation = Settings.Default.FirstInstallation;
            /*if (isFirstInstallation)
            {
                PilotSelectionWindow window = new PilotSelectionWindow();
                if (window.ShowDialog() == false)
                    return;
            }*/
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnStartup(StartupEventArgs e)
        {
            // Get Reference to the current Process
            Process thisProc = Process.GetCurrentProcess();
            // Check how many total processes have the same name as the current one
            if (Process.GetProcessesByName(thisProc.ProcessName).Length > 1)
            {
                // If ther is more than one, than it is already running.
                MessageBox.Show("E-Health Application is already running.");
                Application.Current.Shutdown();
                return;
            }

            base.OnStartup(e);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static aladdinService.Task getTaskById(string id) {
            try
            {
                aladdinService.Task t = new aladdinService.Task();

                if (App.ActiveTasks != null)
                {
                    for (int i=0; i<App.ActiveTasks.Count; i++) 
                    {
                        if (App.ActiveTasks[i].ID.Equals(id))
                        {
                            return App.ActiveTasks[i];
                        }
                    }
                    
                }

                return t;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error : " + ex.Message, Config.APP_NAME, MessageBoxButton.OK, MessageBoxImage.Error);
                return null;
            }
        }
       

    }


}
