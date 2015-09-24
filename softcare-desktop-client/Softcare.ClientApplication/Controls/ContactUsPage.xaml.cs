using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Linq;


namespace EHealth.ClientApplication.Controls
{


    /// <summary>
    /// Interaction logic for ContactUsPage.xaml
    /// </summary>
    public partial class ContactUsPage : UserControl
    {


        /// <summary>
        /// 
        /// </summary>
        public List<aladdinService.SystemParameter> ContactSituations
        {
            get { return (List<aladdinService.SystemParameter>)GetValue(ContactSituationsProperty); }
            set { SetValue(ContactSituationsProperty, value); }
        }


        // Using a DependencyProperty as the backing store for ContactSituations.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty ContactSituationsProperty =
            DependencyProperty.Register("ContactSituations", typeof(List<aladdinService.SystemParameter>), typeof(ContactUsPage));

        

        public ContactUsPage()
        {
            aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService();
            aladdinService.SystemParameter[] _contactSituations = sc.GetSystemParameterList((int)Config.SystemParameterEnum.ContactReason, App.DefaultLocale);
            if (_contactSituations != null)
                this.ContactSituations = _contactSituations.ToList();
            else
            {
                _contactSituations = sc.GetSystemParameterList((int)Config.SystemParameterEnum.ContactReason, App.DefaultLocale);
                if (_contactSituations != null)
                    this.ContactSituations = _contactSituations.ToList();
            }
            this.DataContext = this;
            InitializeComponent();
        }


        /// <summary>
        /// SEND button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // WARNING
            try
            {
                using (aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService())
                {
                    aladdinService.Warning userWarning = new aladdinService.Warning();
                    userWarning.DateTimeOfWarning = System.DateTime.Now;
                    aladdinService.SystemParameter typeOfWarning = new aladdinService.SystemParameter();
                    typeOfWarning.Code = "1";
                    typeOfWarning.Description = "Manual";
                    userWarning.TypeOfWarning = typeOfWarning;
                    aladdinService.SystemParameter situation = this.SituationComboBox.SelectedItem as aladdinService.SystemParameter;
                    string situationStr = "";
                    if (situation != null)
                        situationStr = situation.Description;

                    userWarning.Delivered = false;
                    userWarning.JustificationText = string.Format("Situation:{0}, Description:{1}", situationStr, this.DescriptionBox.Text);
                    aladdinService.Patient patient = new aladdinService.Patient();
                    patient.ID = App.PatientID;
                    userWarning.Patient = patient;
                    aladdinService.OperationResult res = sc.SaveWarning(userWarning, App.CurrentUserID);
                    AppCommands.MoveToPageCommand.Execute("StartPage", null);
                }
            }
            catch (Exception ex) {
                MessageBox.Show("Error : " + ex.Message, Config.APP_NAME, MessageBoxButton.OK, MessageBoxImage.Error);
            }

            // SEND EMAIL
            try
            {
                thirdpartyService.ServicesComponentImplService tps = new thirdpartyService.ServicesComponentImplService();
                // String subject, String txt, String sendTo
                tps.sendEmail("Healthcare desktop client application", this.DescriptionBox.Text, App.PatientID);
            }
            catch (Exception ex) {
                MessageBox.Show("Error : " + ex.Message, Config.APP_NAME, MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


    }


}
