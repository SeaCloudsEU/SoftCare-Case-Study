using EHealth.ClientApplication.ViewModels;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;


namespace EHealth.ClientApplication.Controls
{


    /// <summary>
    /// Interaction logic for ExternalServicePage.xaml
    /// </summary>
    public partial class ExternalServicePage : UserControl
    {


        ExternalServicePageViewModel ViewModel { get; set; }



        public string Url { get; set; }



        public ExternalServicePage(aladdinService.Task activeTask)
        {
            this.ViewModel = new ExternalServicePageViewModel(activeTask);
            this.Url = this.ViewModel.Url;
            InitializeComponent();
        }



        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            Cursor = Cursors.Wait;

            try
            {
                // http://www.healingwell.com/community/default.aspx?f=8
                Uri uri = new Uri("https://www.google.es"); //http://mediaserver2.experimedia.eu/cmsdemo/"); // new Uri("http://dafnis.atosorigin.es/aladdin/phpBB3/includes/sc.php");
                if (uri != null)
                {
                    this.WebBrowser.Source = uri;
                }
            }
            catch (Exception) { }

            Cursor = Cursors.Arrow;
        }
    }


}
