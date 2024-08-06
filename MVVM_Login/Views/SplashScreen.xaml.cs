namespace MVVM_Login.Views;
public partial class SplashScreen : ContentPage
{
    public SplashScreen()
    {
        InitializeComponent();
        BindingContext = new SplashScreenViewModel();
    }
}