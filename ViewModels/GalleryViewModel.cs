using System.Collections.ObjectModel;

namespace MVVM_Login.ViewModels
{
	public class GalleryViewModel : MainViewModel
	{
		public ObservableCollection<string> Images { get; set; }
        public ObservableCollection<string> Videos { get; set; }

        public GalleryViewModel()
        {
            Images = new ObservableCollection<string>
            {
                "zeisslogo.jpg",
                "dotnet_bot.jpg",
                "img1.jpg",
                "img2.jpg",
                
            };

            Videos = new ObservableCollection<string>
            {
                "https://www.w3schools.com/html/mov_bbb.mp4",
                "https://www.w3schools.com/html/movie.mp4",
                "Resources/Images/video1.mp4",
                
            };
        }
	}
}