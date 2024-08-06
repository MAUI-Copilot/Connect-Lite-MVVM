using MVVM_Login.ViewModels;
using MVVM_Login.Models;

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

		private async void OnPatientSelected(object sender, SelectedItemChangedEventArgs e)
        {
			if (e.SelectedItem == null)
                return;

            var selectedPatient = e.SelectedItem as Patient; // Assuming your Patient model is named 'Patient'
           if (selectedPatient != null)
			{
				if (Navigation != null)
					{
					await Navigation.PushAsync(new MediaPage
					{
						BindingContext = new MediaViewModel(selectedPatient)
					});
				}
			}
		}

	}
}