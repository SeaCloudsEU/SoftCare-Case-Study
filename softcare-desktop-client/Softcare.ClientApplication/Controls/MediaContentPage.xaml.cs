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

namespace EHealth.ClientApplication.Controls
{
    /// <summary>
    /// Interaction logic for VideoPage.xaml
    /// </summary>
    public partial class MediaContentPage : UserControl
    {
        public MediaContentPage()
        {
            InitializeComponent();
        }

        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            e.Handled = true;
            if (AppCommands.OpenMediaContentSectionCommand.Equals(e.Command))
            {
                if ("education".Equals(e.Parameter))
                    AppCommands.MoveToPageCommand.Execute("education", null);
                else if ("games".Equals(e.Parameter))
                    AppCommands.MoveToPageCommand.Execute("games", null);
                else if ("entertainment".Equals(e.Parameter))
                    AppCommands.MoveToPageCommand.Execute("entertainment", null);
            }
        }

        private void CommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            if (AppCommands.OpenMediaContentSectionCommand.Equals(e.Command))
            {
                e.Handled = true;
                if ("education".Equals(e.Parameter))
                    e.CanExecute = App.EducationContent != null && App.EducationContent.Length > 0;
                else if ("games".Equals(e.Parameter))
                    e.CanExecute = App.GamesContent != null && App.GamesContent.Length > 0;
                else if ("entertainment".Equals(e.Parameter))
                    e.CanExecute = App.EntertainmentContent != null && App.EntertainmentContent.Length > 0;
            }
        }

        //private void UserControl_Loaded(object sender, RoutedEventArgs e)
        //{
        //    string url = "<object style=\"height: 344px; width: 425px\"><param name=\"movie\" value=\"http://www.youtube.com/v/9Wv9jrk-gXc\"><param name=\"allowFullScreen\" value=\"true\"><param name=\"allowScriptAccess\" value=\"always\"><embed src=\"http://www.youtube.com/v/9Wv9jrk-gXc\" type=\"application/x-shockwave-flash\" allowfullscreen=\"true\" allowScriptAccess=\"always\" width=\"425\" height=\"344\"></object>";
        //    MyPlayer.Play(url);
        //}
    }
}
