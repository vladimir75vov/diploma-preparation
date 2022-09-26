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
using WPF___Турагентство.Pages.Admin;

namespace WPF___Турагентство
{
    /// <summary>
    /// Interaction logic for Admin.xaml
    /// </summary>
    public partial class Admin : Window
    {
        public Admin()
        {
            InitializeComponent();
        }

        private void buttonCreateNewTour_Click(object sender, RoutedEventArgs e)
        {
            CreateNewTour createNewTour = new CreateNewTour();
            createNewTour.Show();
        }

        private void buttonEditExistingTour_Click(object sender, RoutedEventArgs e)
        {
            EditExistingTour editExistingTour = new EditExistingTour();
            editExistingTour.Show();
        }
    }
}
