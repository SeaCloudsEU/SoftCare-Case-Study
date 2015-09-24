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
using EHealth.ClientApplication.Windows;
using EHealth.ClientApplication.ViewModels;

namespace EHealth.ClientApplication.Controls
{
    /// <summary>
    /// Interaction logic for ExerciseControl.xaml
    /// </summary>
    public partial class ExercisePage : UserControl
    {
        ExercisePageViewModel ViewModel { get; set; }

        public string Url { get; set; }

        public string Text { get; set; }

        public ExercisePage(aladdinService.Task activeTask)
        {
            this.ViewModel = new ExercisePageViewModel(activeTask);
            this.Url = this.ViewModel.Url;
            this.Text = this.ViewModel.Text;
            this.DataContext = this.ViewModel;
            InitializeComponent();

            if (string.IsNullOrEmpty(this.Url))
                this.WebPageExpander.IsExpanded = false;
            if (string.IsNullOrEmpty(this.Text))
                this.TextExpander.IsExpanded = false;
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            Cursor = Cursors.Wait;

            try
            {
                Uri uri = new Uri(Url);
                if (uri != null)
                    this.WebBrowser.Source = uri;
            }
            catch (Exception) { }

            Cursor = Cursors.Arrow;
        }

        private void FullView_Click(object sender, RoutedEventArgs e)
        {
            FullviewWindow fullviewWindow = new FullviewWindow(this.Url);
            this.WebBrowser.Navigate(null);
            if (fullviewWindow.ShowDialog() == false)
                if (!string.IsNullOrEmpty(this.Url))
                    this.WebBrowser.Navigate(new Uri(Url));
        }

        private void WebBrowser_Navigated(object sender, NavigationEventArgs e)
        {
            Utils.HideScriptErrors(this.WebBrowser,true);
        }

        private void UserControl_Unloaded(object sender, RoutedEventArgs e)
        {
            this.WebBrowser.Navigate(null);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AppCommands.MoveToPageCommand.Execute("MyTasksPage", null);
        }
    }
}
