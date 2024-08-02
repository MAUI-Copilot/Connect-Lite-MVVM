using System.ComponentModel;
using System.Windows.Input;


namespace User_Pass
{
    public class LoginViewModel : INotifyPropertyChanged
    {
        private string username;
        private string password;

        public string Username
        {
            get => username;
            set
            {
                if (username != value)
                {
                    username = value;
                    OnPropertyChanged(nameof(Username));
                }
            }
        }

        public string Password
        {
            get => password;
            set
            {
                if (password != value)
                {
                    password = value;
                    OnPropertyChanged(nameof(Password));
                }
            }
        }

        public ICommand LoginCommand { get; }

        public LoginViewModel()
        {
            LoginCommand = new Command(OnLogin);
        }

        private async void OnLogin()
        {
            // Replace these with your actual credentials
            const string correctUsername = "Zeiss";
            const string correctPassword = "Zeiss@123";

            if (Username == correctUsername && Password == correctPassword)
            {
                // Handle successful login
                await Application.Current.MainPage.DisplayAlert("Success", "Login successful", "OK");
            }
            else
            {
                // Show invalid details popup
                await Application.Current.MainPage.DisplayAlert("Error", "Invalid username or password", "OK");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}