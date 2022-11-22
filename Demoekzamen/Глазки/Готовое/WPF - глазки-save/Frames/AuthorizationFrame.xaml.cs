using System;
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
            CaptchaGeb();
        }

        private void SignIn_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxCaptcha.Text == textBoxCaptchaInput.Text)
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
            else
            {
                MessageBox.Show("Неправильная капча", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            CaptchaGeb();
        }

        private string CaptchaGeb()
        {
            string allowchar = " ";
            string pwd = null;
            allowchar = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
            allowchar += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y,z";
            allowchar += "1,2,3,4,5,6,7,8,9,0";
            char[] a = { ',' };
            string[] ar = allowchar.Split(a);
            string temp = " ";
            Random r = new Random();
            for (int i = 0; i < 6; i++)
            {
                temp = ar[(r.Next(0, ar.Length))];
                pwd += temp;
            }
            textBoxCaptcha.Text = pwd;

            return pwd;
        }
    }
}
