using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using EHealth.ClientApplication.ViewModels;
using System.ComponentModel;
using System.IO;


namespace EHealth.ClientApplication.Controls
{


    /// <summary>
    /// Interaction logic for LoginPage.xaml
    /// </summary>
    public partial class LoginPage : UserControlBase
    {
    

        public string UserName
        {
            get { return this.txtUsername.Text; }
            set {this.txtUsername.Text = value; }
        }


        public string Password
        {
            get { return this.txtPassword.Password; }
            set {this.txtPassword.Password = value; }
        }


        public LoginPage()
        {
            InitializeComponent();
        }


        /// <summary>
        /// 
        /// </summary>
        private void Authenticate()
        {
            using (aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService())
            {
                Cursor = Cursors.Wait;
                try
                {
                    aladdinService.OperationResult res = sc.Auth(this.UserName, this.Password, "");
                    if (res.Code == "-2")
                    {
                        this.txtMessage.Text = res.Description;
                    }
                    else if (res.Code != "0")
                    {
                        App.CurrentUserID = res.Code;
                        aladdinService.User currentUser = sc.GetUser(App.CurrentUserID);
                        if (currentUser != null)
                        {
                            App.UserType = currentUser.Type.Code;
                            App.CurrentUserName = currentUser.Username;
                            App.IsUserAuthenticated = true;

                            if (App.UserType.Equals(Config.USERTYPE_CARER))
                            {
                                App.PatientID = FindPatientID();
                                if (App.PatientID.Equals(string.Empty))
                                {
                                    MessageBox.Show("No unique patient related to this account", "ALADDIN");
                                    //return;
                                }
                            }
                            else if (App.UserType.Equals(Config.USERTYPE_PATIENT))
                            {
                                App.PatientID = currentUser.PersonID;
                            }
                            else
                            {
                                this.txtMessage.Text = "- ERROR : user type not allowed to use this application -";
                                return;
                            }

                            AppCommands.MoveToPageCommand.Execute("StartPage", this);
                        }
                        else
                        {
                            this.txtMessage.Text = "- ERROR getting user data -";
                        }
                    }
                    else
                    {
                        this.txtMessage.Text = App.LoginErrorMessage;
                    }
                }
                catch (Exception ex)
                {
                    this.txtMessage.Text = ex.Message;
                }
                finally
                {
                    Cursor = Cursors.Arrow;
                }
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private string FindPatientID()
        {
            using (aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService())
            {
                aladdinService.PatientInfo[] myPatients = sc.GetPatientsForCaregiver(App.CurrentUserID);
                if (myPatients!= null && myPatients.Count() == 1)
                    return myPatients[0].ID;
                else
                    return string.Empty;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            e.Handled = true;

            if (AppCommands.LoginCommand.Equals(e.Command))
                this.Authenticate();
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
                e.CanExecute = this.txtUsername.Text.Length > 0 && this.txtPassword.Password.Length > 0;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            this.txtPassword.Password = "";
        }

        
    }


}
