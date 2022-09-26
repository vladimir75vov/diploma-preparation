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
using System.Windows.Shapes;
using WPF___Турагентство.Pages.Manager;

namespace WPF___Турагентство
{
    /// <summary>
    /// Interaction logic for Manager.xaml
    /// </summary>
    public partial class Manager : Window
    {
        public Manager()
        {
            InitializeComponent();
        }

        private void RegisterNewClient_Click(object sender, RoutedEventArgs e)
        {
            RegisterNewClient registerNewClient = new RegisterNewClient();
            registerNewClient.Show();
        }

        private void PickUpTour_Click(object sender, RoutedEventArgs e)
        {
            PickUpTour pickUpTour = new PickUpTour();
            pickUpTour.Show();
        }
    }
}
