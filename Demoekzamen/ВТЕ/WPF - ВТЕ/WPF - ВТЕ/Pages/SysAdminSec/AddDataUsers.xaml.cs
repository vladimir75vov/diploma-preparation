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

namespace WPF___ВТЕ.Pages.SysAdminSec
{
    /// <summary>
    /// Interaction logic for AddDataUsers.xaml
    /// </summary>
    public partial class AddDataUsers : Page
    {
        public AddDataUsers()
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            role.ItemsSource = ConnectDB.modeldb.Roles.ToList();
        }

        private void AddData_Click(object sender, RoutedEventArgs e)
        {
            Users users = new Users();
            users.login = login.Text;
            users.email = email.Text;
            users.password = password.Text;
            users.surname = surname.Text;   
            users.name= name.Text;
            users.patronymic= patronymic.Text;
            var curentRole = role.SelectedItem as Roles;
            users.role = curentRole.ID;
            ConnectDB.modeldb.Users.Add(users);
            ConnectDB.modeldb.SaveChanges();
            MessageBox.Show("Пользователь " + users.login +" добавлен!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            NavigationService.GoBack();

        }
    }
}
