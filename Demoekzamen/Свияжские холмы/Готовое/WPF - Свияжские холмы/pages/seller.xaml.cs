using System.Windows;
using System.Windows.Controls;
using WPF___Свияжские_холмы.windows;

namespace WPF___Свияжские_холмы.pages
{
    public partial class seller : Page
    {
        public seller()
        {
            InitializeComponent();
        }

        private void buttonCreateOrder_Click(object sender, RoutedEventArgs e)
        {
            createOrder createOrder = new createOrder();
            createOrder.Show();
        }
    }
}
