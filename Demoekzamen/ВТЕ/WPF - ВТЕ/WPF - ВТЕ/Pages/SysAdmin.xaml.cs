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
using WPF___ВТЕ.Models;
using WPF___ВТЕ.Pages.SysAdminSec;

namespace WPF___ВТЕ.Pages
{
    /// <summary>
    /// Interaction logic for SysAdmin.xaml
    /// </summary>
    public partial class SysAdmin : Page
    {
        public SysAdmin()
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            UserGrid.ItemsSource = ConnectDB.modeldb.Users.ToList();
        }

        private void EditData_Click(object sender, RoutedEventArgs e)
        {

        }

        private void RemoveData_Click(object sender, RoutedEventArgs e)
        {
            if(MessageBox.Show("Вы действительно хотите удалить пользователя?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Information) == MessageBoxResult.Yes)
            {
                var currentUser = UserGrid.SelectedItem as Users;
                ConnectDB.modeldb.Users.Remove(currentUser);
                ConnectDB.modeldb.SaveChanges();
                UserGrid.ItemsSource = ConnectDB.modeldb.Users.ToList();
                MessageBox.Show("Пользователь удален!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            }    
        }

        private void AddData_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddDataUsers());
        }
    }
}
