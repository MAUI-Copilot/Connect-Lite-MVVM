

namespace MVVM_Login.Views;

public partial class MediaPage : ContentPage
{
	public MediaPage()
	{
		InitializeComponent();	
			
	}
	void ContentPage_Unloaded(object? sender, EventArgs e)
	{
		// Stop and cleanup MediaElement when we navigate away
		//mediaElement.Handler?.DisconnectHandler();
		
		
	}
}