using MVVM_Login.ViewModels;
using System.Windows.Input;
public class WelcomePageViewModel : MainViewModel
{
    public ICommand ContinueCommand { get; }
 
    public WelcomePageViewModel()
    {
        ContinueCommand = new Command(Continue);
    }
 
    private async void Continue()
    {
        await Shell.Current.GoToAsync("//CloudPage");

    }
}