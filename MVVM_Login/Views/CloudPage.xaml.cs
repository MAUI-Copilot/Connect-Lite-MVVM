
using MVVM_Login.ViewModels;

namespace MVVM_Login.Views
{
    public partial class CloudPage
    {
        public CloudPage()
        {
            InitializeComponent();
            BindingContext = new CloudViewModel();
        }
        private async void OnLoginButtonClicked(object? sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("///LoginPage");
        }
    }
}


	
