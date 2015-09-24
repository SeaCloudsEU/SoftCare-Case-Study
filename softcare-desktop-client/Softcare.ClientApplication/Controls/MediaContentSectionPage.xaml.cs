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
    /// Interaction logic for MediaContentSectionPage.xaml
    /// </summary>
    public partial class MediaContentSectionPage : UserControl
    {


        public string Category { get; set; }
        List<aladdinService.MediaContent> SectionMediaContent = new List<aladdinService.MediaContent>();


        /// <summary>
        /// 
        /// </summary>
        /// <param name="category"></param>
        public MediaContentSectionPage(string category)
        {
            InitializeComponent();
            this.Category = category;
        }

        
        /// <summary>
        /// 
        /// </summary>
        private void LoadContent()
        {
            Cursor = Cursors.Wait;
            this.MediaContentPanel.Children.Clear();

            switch (Category)
            {
                case "entertainment":
                    SectionMediaContent = App.EntertainmentContent.ToList();
                    break;
                case "games":
                    SectionMediaContent = App.GamesContent.ToList();
                    break;
                case "education":
                    SectionMediaContent = App.EducationContent.ToList();
                    break;
                default:
                    break;
            }

            foreach (aladdinService.MediaContent content in SectionMediaContent)
            {
                MediaContentControl mediaContentControl = new MediaContentControl();
                mediaContentControl.Title = content.title;
                mediaContentControl.MediaContent = content;
                this.MediaContentPanel.Children.Add(mediaContentControl);
            }

            Cursor = Cursors.Arrow;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            LoadContent();
        }


    }


}
