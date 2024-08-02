using MVVM_Login.ViewModels;

namespace MVVM_Login.Views
{
	public partial class CloudPage1 : ContentPage
	{
		public CloudPage1()
		{
			InitializeComponent();
			BindingContext = new CloudViewModel1();
		}
		 private async void OnLogoutButtonClicked(object? sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("///CloudPage");
        }

	}
}