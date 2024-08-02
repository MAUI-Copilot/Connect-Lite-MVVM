using MVVM_Login.ViewModels;
 
public class SplashScreenViewModel : MainViewModel
{
    public SplashScreenViewModel()
    {
        Initialize();
    }
 
    private async void Initialize()
    {
        await Task.Delay(5000); // Simulate a delay for the splash screen
        await Shell.Current.GoToAsync("//Disclaimer");
    }
}