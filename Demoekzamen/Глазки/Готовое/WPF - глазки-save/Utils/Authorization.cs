using System.Linq;
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
            ConnectDB.modeldb = new Requests.testglazkiavtorEntities();
            Requests.User userObj = ConnectDB.modeldb.User.FirstOrDefault(x =>
                x.Login == login && x.Password == pass);

            if (userObj == null)
            {
                return _authorization;
            }

            if (login == userObj.Login && pass == userObj.Password)
            {
                _authorization = true;
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
