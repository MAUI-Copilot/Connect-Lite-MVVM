using MVVM_Login.ViewModels;
using System.Windows.Input;
public class WelcomePageViewModel : MainViewModel
{
    public ICommand NextCommand { get; }
 
    public WelcomePageViewModel()
    {
        NextCommand = new Command(OnNext);
    }
 
    private async void OnNext()
    {
        await Shell.Current.GoToAsync("//CloudPage");
    }
}