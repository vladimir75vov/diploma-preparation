using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using WPF___глазки_save.Utils;

namespace WPF___глазки_save.Frames
{
    /// <summary>
    /// Interaction logic for Admin.xaml
    /// </summary>
    public partial class AdminFrame : Page
    {
        private int x = 2;

        public AdminFrame()
        {
            InitializeComponent();

            DispatcherTimer timer = new DispatcherTimer();

            timer.Tick += new EventHandler(timerTick);
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Start();

        }

        private void timerTick(object sender, EventArgs e)
        {
            TimeSpan span = TimeSpan.FromSeconds(x);//сутки
            if (x == 0)
            {
                MessageBox.Show("Пока", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
                NavigationService.Navigate(new UserFrame());
                Authorization.signOut();
            }
            if(x == 900)
            {
                MessageBox.Show("Осталось 15 мин", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            x--;
            timer.Content = span;
        }
    }
}
