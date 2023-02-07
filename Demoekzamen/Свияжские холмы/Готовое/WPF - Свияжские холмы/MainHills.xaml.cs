using System.Windows;
using WPF___Свияжские_холмы.pages;

namespace WPF___Свияжские_холмы
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            frame.Navigate(new user());
        }

        private void buttonAdmin_Click(object sender, RoutedEventArgs e)
        {
            frame.Navigate(new admin());
        }

        private void buttonShiftSupervisor_Click(object sender, RoutedEventArgs e)
        {
            frame.Navigate(new shiftSupervisor());
        }

        private void buttonSeller_Click(object sender, RoutedEventArgs e)
        {
            frame.Navigate(new seller());
        }
    }
}
