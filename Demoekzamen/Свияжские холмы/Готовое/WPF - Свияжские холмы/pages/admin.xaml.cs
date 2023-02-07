using System.Windows;
using System.Windows.Controls;
using WPF___Свияжские_холмы.windows;

namespace WPF___Свияжские_холмы.pages
{
    public partial class admin : Page
    {
        public admin()
        {
            InitializeComponent();
        }

        private void buttonCreateReport_Click(object sender, RoutedEventArgs e)
        {
            createOrder createOrder = new createOrder();
            createOrder.Show();
        }

        private void buttonLoginHistory_Click(object sender, RoutedEventArgs e)
        {
            loginHistory loginHistory = new loginHistory();
            loginHistory.Show();
        }

        private void buttonMaterialСosts_Click(object sender, RoutedEventArgs e)
        {
            materialСosts materialСosts = new materialСosts();
            materialСosts.Show();
        }
    }
}
