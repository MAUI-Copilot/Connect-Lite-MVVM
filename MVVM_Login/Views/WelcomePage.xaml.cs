namespace MVVM_Login.Views;
 
public partial class WelcomePage : ContentPage
{
    public WelcomePage()
    {
        InitializeComponent();
        BindingContext = new WelcomePageViewModel();
    }
}