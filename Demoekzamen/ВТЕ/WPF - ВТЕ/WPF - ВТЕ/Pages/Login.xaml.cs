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

namespace WPF___ВТЕ.Pages
{
    public partial class Login : Page
    {
        public Login()
        {
            InitializeComponent();
            ConnectDB.modeldb = new Entities();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var user = ConnectDB.modeldb.Users.FirstOrDefault(x => x.login == login.Text && x.password == password.Password);
                if (user != null)
                {
                    MessageBox.Show("Здравствуйте " + user.login, "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);

                    switch(user.Roles.role)
                    {
                        case "System Administrator":
                            NavigationService.Navigate(new SysAdmin());
                            break;
                        case "Administrator":
                            NavigationService.Navigate(new Administrator());
                            break;
                        case "Shift Supervisor":
                            NavigationService.Navigate(new ShiftSupervisor());
                            break;
                        case "Worker":
                            NavigationService.Navigate(new Worker());
                            break;
                        case "Visitor":
                            NavigationService.Navigate(new Visitor());
                            break;
                    }
                }
                else
                {
                MessageBox.Show("Пользователя не существует", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            catch
            {

            }
        }
    }
}
