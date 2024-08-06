namespace MVVM_Login.ViewModels
{
	public class CloudViewModel : MainViewModel
	{
		public string Title { get; set; }

		public CloudViewModel()
		{
			Title = "Cloud";
			
		}

       private async void OnLogin()
        {
            // Implement your login logic here
            // For example, navigate to a new page or show a message
            await Application.Current.MainPage.DisplayAlert("Login", "Login button clicked", "OK");
        }
	}
}