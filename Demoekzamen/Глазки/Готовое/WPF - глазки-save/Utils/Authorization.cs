using System.Windows.Controls;

namespace WPF___глазки_save.Utils
{
    internal class Authorization
    {
        static bool _authorization = false;
        static public bool authorization
        {
            get
            {
                return _authorization;
            }
        }

        static public bool signIn(string login, string pass)
        {
            if (login == "vladimir75vov" && pass == "test")
            {
                _authorization = true;
            }
            else
            {
                _authorization = false;
            }
            return _authorization;
        }

        static public bool signOut()
        {
            _authorization = false;
            return _authorization;
        }
    }
}
