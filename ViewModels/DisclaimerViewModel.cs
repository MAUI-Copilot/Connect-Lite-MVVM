 
using MVVM_Login.ViewModels;
using MVVM_Login.Views;
using System.Windows.Input;

public class DisclaimerViewModel : MainViewModel
{
    public ICommand NavigateToCloudPageCommand { get; }
 
    public DisclaimerViewModel()
    {
        NavigateToCloudPageCommand = new Command(OnNavigateToCloudPage);
        
    }
    private async void OnNavigateToCloudPage()
    {
        await Shell.Current.GoToAsync("//WelcomePage");
    }
    
}