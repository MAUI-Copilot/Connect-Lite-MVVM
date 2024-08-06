using MVVM_Login.ViewModels;
using System.Windows.Input; 
namespace MVVM_Login.Views

{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            BindingContext = new LoginViewModel();
        }
         private async void OnLoginButtonClicked(object? sender, EventArgs e)
        {
            
            await Shell.Current.GoToAsync("///CloudPage1");
            
        }
    }
}