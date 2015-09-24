using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using EHealth.ClientApplication.Controls;
using System.Windows;

namespace EHealth.ClientApplication.ViewModels
{
    class MainWindowViewModel : INotifyPropertyChanged
    {
        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void SendPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion

        public string CurrentDateInfo { get; set; }

        private string _CurrentUserInfo = "";

        public string CurrentUserInfo
        {
            get
            {
                if (App.IsUserAuthenticated)
                    _CurrentUserInfo = string.Format("{0}, {1}", App.WellcomeALADDINMessage, App.CurrentUserName);
                else
                    _CurrentUserInfo = App.WellcomeALADDINMessage;

                _CurrentUserInfo = _CurrentUserInfo.Replace("ALADDIN", Config.APP_NAME);

                return _CurrentUserInfo;
            }
            set
            {
                _CurrentUserInfo = value;
                SendPropertyChanged("CurrentUserInfo");
            }
        }

        public aladdinService.Task ActiveTask { get; set; }

        object _ActivePage;
        public object ActivePage
        {
            get { return _ActivePage; }
            set
            {
                if (_ActivePage != value)
                {
                    _ActivePage = value;
                    this.SendPropertyChanged("ActivePage");
                }
            }
        }

        LoginPage _LoginPage;
        LoginPage LoginPage
        {
            get
            {
                if (_LoginPage == null)
                    _LoginPage = new LoginPage();
                return _LoginPage;
            }
        }

        StartPage _StartPage;
        StartPage StartPage
        {
            get
            {
                if (_StartPage == null)
                    _StartPage = new StartPage();
                return _StartPage;
            }
        }

        MyTasksPage _MyTasksPage;
        MyTasksPage MyTasksPage
        {
            get
            {
                if (_MyTasksPage == null)
                    _MyTasksPage = new MyTasksPage();
                return _MyTasksPage;
            }
        }

        WizardPage _WizardPage;
        WizardPage WizardPage
        {
            get
            {
                _WizardPage = new WizardPage(this.ActiveTask);
                return _WizardPage;
            }
        }

        MeasureWeightPage _MeasureWeightPage;
        MeasureWeightPage MeasureWeightPage
        {
            get
            {
                _MeasureWeightPage = new MeasureWeightPage(this.ActiveTask);
                return _MeasureWeightPage;
            }
        }

        MeasureActivityPage _MeasureActivityPage;
        MeasureActivityPage MeasureActivityPage
        {
            get
            {
                _MeasureActivityPage = new MeasureActivityPage(this.ActiveTask);
                return _MeasureActivityPage;
            }
        }

        MeasureBloodPressurePage _MeasureBloodPressurePage;
        MeasureBloodPressurePage MeasureBloodPressurePage
        {
            get
            {
                _MeasureBloodPressurePage = new MeasureBloodPressurePage(this.ActiveTask);
                return _MeasureBloodPressurePage;
            }
        }

        MediaContentPage _MediaContentPage;
        MediaContentPage MediaContentPage
        {
            get
            {
                if (_MediaContentPage == null)
                    _MediaContentPage = new MediaContentPage();
                return _MediaContentPage;
            }
        }

        DisclaimerPage _DisclaimerPage;
        DisclaimerPage DisclaimerPage
        {
            get
            {
                if (_DisclaimerPage == null)
                    _DisclaimerPage = new DisclaimerPage();
                return _DisclaimerPage;
            }
        }

        ContactUsPage _ContactUsPage;
        ContactUsPage ContactUsPage
        {
            get
            {
                if (_ContactUsPage == null)
                    _ContactUsPage = new ContactUsPage();
                return _ContactUsPage;
            }
        }

        ExternalServicePage _ExternalServicePage;
        ExternalServicePage ExternalServicePage
        {
            get
            {
                _ExternalServicePage = new ExternalServicePage(this.ActiveTask);
                return _ExternalServicePage;
            }
        }

        ExercisePage _ExercisePage;
        ExercisePage ExercisePage
        {
            get
            {
                _ExercisePage = new ExercisePage(this.ActiveTask);
                return _ExercisePage;
            }
        }

        MessagePage _MessagePage;
        MessagePage MessagePage
        {
            get
            {
                _MessagePage = new MessagePage(this.ActiveTask);
                return _MessagePage;
            }
        }

        OptionsPage _OptionsPage;
        OptionsPage OptionsPage
        {
            get
            {
                if (_OptionsPage == null)
                    _OptionsPage = new OptionsPage();
                return _OptionsPage;
            }
        }

        MediaContentSectionPage _MediaContentSectionPage;
        MediaContentSectionPage MediaContentSectionPage
        {
            get
            {
                if (_MediaContentSectionPage == null)
                    _MediaContentSectionPage = new MediaContentSectionPage(this.ContentCategory);
                return _MediaContentSectionPage;
            }
        }


        public string ContentCategory { get; set; }

        public bool IsUserAuthenticatedFlag
        {
            get
            {
                return App.IsUserAuthenticated;
            }
        }

        public bool IsUserNotAuthenticatedFlag
        {
            get
            {
                return !App.IsUserAuthenticated;
            }
        }

        public Visibility IsUserAuthenticated
        {
            get
            {
                if (App.IsUserAuthenticated)
                    return Visibility.Visible;
                else
                    return Visibility.Collapsed;
            }
        }

        public Visibility IsNotUserAuthenticated
        {
            get
            {
                if (!App.IsUserAuthenticated)
                    return Visibility.Visible;
                else
                    return Visibility.Collapsed;
            }
        }
        


        public MainWindowViewModel()
        {
            this.CurrentDateInfo = string.Format("{0:D}", DateTime.Now);
            App.LoggedIn += new LoggedInEventHandler(App_LoggedIn);
            this.ActivePage = this.StartPage;
        }

        void App_LoggedIn(object sender)
        {
            this.SendPropertyChanged("CurrentUserInfo");
            this.SendPropertyChanged("IsUserAuthenticatedFlag");
            this.SendPropertyChanged("IsUserNotAuthenticatedFlag");
        }

        internal void MoveToContentPage(aladdinService.MediaContent content)
        {

            ContentPage page = new ContentPage(content);
            this.ActivePage  = page;

        }


        internal void MoveToPage(string to, aladdinService.Task activeTask)
        {
            object page = null;
            this.ActiveTask = activeTask;

            if (!string.IsNullOrEmpty(to))
            {
                switch (to)
                {
                    case "education":
                        page = this.MediaContentSectionPage;
                        (page as MediaContentSectionPage).Category = "education";
                        break;
                    case "games":
                        page = this.MediaContentSectionPage;
                        (page as MediaContentSectionPage).Category = "games";
                        break;
                    case "entertainment":
                        page = this.MediaContentSectionPage;
                        (page as MediaContentSectionPage).Category = "entertainment";
                        break;
                    case "LoginPage":
                        if (App.IsUserAuthenticated)
                            App.IsUserAuthenticated = false;
                        page = this.LoginPage;
                        break;
                    case "MyTasksPage":
                        page = this.MyTasksPage;
                        break;
                    case "OptionsPage":
                        page = this.OptionsPage;
                        break;
                    case "WizardPage":
                        page = this.WizardPage;
                        break;
                    case "StartPage":
                        page = this.StartPage;
                        break;
                    case "MeasureWeightPage":
                        page = this.MeasureWeightPage;
                        break;
                    case "MeasureBloodPressurePage":
                        page = this.MeasureBloodPressurePage;
                        break;
                    case "MeasureActivityPage":
                        page = this.MeasureActivityPage;
                        break;
                    case "MediaContentPage":
                        page = this.MediaContentPage;
                        break;
                    case "DisclaimerPage":
                        {
                            if (App.HasDisclaimer)
                                page = this.DisclaimerPage;
                            else
                                page = this.MediaContentPage;
                        }
                        break;
                    case "ContactUsPage":
                        page = this.ContactUsPage;
                        break;
                    case "PlayGame":
                        page = this.ExternalServicePage;
                        break;
                    case "SocialNetwork":
                        page = this.ExternalServicePage;
                        (page as ExternalServicePage).Url = App.ForumPage;
                        break;
                    case "MessagePage":
                        page = this.MessagePage;
                        break;
                    case "Exercise":
                        page = this.ExercisePage;
                        break;
                    default:
                        break;
                }
            }

            if (page != null)
                this.ActivePage = page;
        }

        internal void ExitApplication()
        {
            Application.Current.Shutdown();
        }

    }
}
