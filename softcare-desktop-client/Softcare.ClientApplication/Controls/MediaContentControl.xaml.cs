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
    /// Interaction logic for MediaContentControl.xaml
    /// </summary>
    public partial class MediaContentControl : UserControl
    {




        public string Title
        {
            get { return (string)GetValue(TitleProperty); }
            set { SetValue(TitleProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Title.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TitleProperty =
            DependencyProperty.Register("Title", typeof(string), typeof(MediaContentControl));

        public aladdinService.MediaContent MediaContent
        {
            get { return (aladdinService.MediaContent)GetValue(MediaContentProperty); }
            set { SetValue(MediaContentProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MediaContent.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty MediaContentProperty =
            DependencyProperty.Register("MediaContent", typeof(aladdinService.MediaContent), typeof(MediaContentControl));

        

        public MediaContentControl()
        {
            InitializeComponent();
            this.DataContext = this;
        }
    }
}
