using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
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
