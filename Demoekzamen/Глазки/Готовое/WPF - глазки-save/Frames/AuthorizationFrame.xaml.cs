using System.Windows;
using System.Windows.Controls;
using WPF___глазки_save.Utils;

namespace WPF___глазки_save.Frames
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationFrame.xaml
    /// </summary>
    public partial class AuthorizationFrame : Page
    {
        public AuthorizationFrame()
        {
            InitializeComponent();

        }

        private void SignIn_Click(object sender, RoutedEventArgs e)
        {
            if (Authorization.signIn(TextBoxLogin.Text, TextBoxPass.Password))
            {
                MessageBox.Show("Ok", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                NavigationService.Navigate(new AdminFrame());
            }
            else
            {
                MessageBox.Show("Неправильный логин или пароль", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
