 
using MVVM_Login.ViewModels;
using MVVM_Login.Views;
using System.Windows.Input;

public class DisclaimerViewModel : MainViewModel
{
    public ICommand AcceptCommand { get; }
 
    public DisclaimerViewModel()
    {
        AcceptCommand = new Command(OnAccept);
        
    }
    private async void OnAccept()
    {
        await Shell.Current.GoToAsync("//CloudPage");
    }
    
}