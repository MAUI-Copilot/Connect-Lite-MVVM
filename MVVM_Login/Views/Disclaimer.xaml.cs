using MVVM_Login.ViewModels;
namespace MVVM_Login.Views;

public partial class Disclaimer : ContentPage
{
    public Disclaimer()
    {
        InitializeComponent();
        BindingContext = new DisclaimerViewModel();
    }
    private async void OnAccept(object? sender, EventArgs e)
    {
        //await Shell.Current.GoToAsync("//CloudPage");
       //await Shell.Current.GoToAsync("//LoginPage");
       await Navigation.PushAsync(new CloudPage
                    {
                        BindingContext = new CloudViewModel()
                    });
    }
}