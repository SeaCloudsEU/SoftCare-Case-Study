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
    /// Interaction logic for ContactUsPage.xaml
    /// </summary>
    public partial class DisclaimerPage : UserControl
    {


        public DisclaimerPage()
        {
            this.DisclaimerText = App.DisclaimerText;
            this.DisclaimerText = this.DisclaimerText.Replace(@"\n", Environment.NewLine);
            this.DataContext = this;
            InitializeComponent();
        }

        public string DisclaimerText { get; set; }

        private void AcceptButton_Click(object sender, RoutedEventArgs e)
        {
            AppCommands.MoveToPageCommand.Execute("MediaContentPage", null);
        }

    }
}
