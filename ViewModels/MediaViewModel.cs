using System.Collections.ObjectModel;
using MVVM_Login.Models;
using System.Windows.Input;

namespace MVVM_Login.ViewModels
{
	public class MediaViewModel : BindableObject
	{
		private ObservableCollection<MediaItem> _allMediaItems;
		private ObservableCollection<MediaItem> _filteredMediaItems;
		private int _selectedSegment;
		public Patient SelectedPatient 
		{ get; set; }

		public MediaViewModel(Patient patient)
        {
            SelectedPatient = patient;
            // Initialize other properties as needed
			_allMediaItems = new ObservableCollection<MediaItem>
            {
                new MediaItem { Title = "Image 1", Type = MediaType.Image, Url = "https://via.placeholder.com/150" },
				new MediaItem { Title = "Video 1", Type = MediaType.Video, Url = "https://www.w3schools.com/html/movie.mp4" },
                new MediaItem { Title = "Image 2", Type = MediaType.Image, Url = "https://via.placeholder.com/150" },
                new MediaItem { Title = "Video 2", Type = MediaType.Video, Url = "https://www.w3schools.com/html/movie.mp4" }
				//new MediaItem { Title = "Image 3", Type = MediaType.Image, Url = "https://via.placeholder.com/150" }
            };
			
			FilteredMediaItems = new ObservableCollection<MediaItem>(_allMediaItems);
        }

		public MediaViewModel()
		{
			// Initialize media items
			_allMediaItems = new ObservableCollection<MediaItem>
            {
                new MediaItem { Title = "Image 1", Type = MediaType.Image, Url = "https://via.placeholder.com/150" },
				new MediaItem { Title = "Video 1", Type = MediaType.Video, Url = "https://www.w3schools.com/html/movie.mp4" },
                new MediaItem { Title = "Image 2", Type = MediaType.Image, Url = "https://via.placeholder.com/150" },
                new MediaItem { Title = "Video 2", Type = MediaType.Video, Url = "https://www.w3schools.com/html/movie.mp4" }
				//new MediaItem { Title = "Image 3", Type = MediaType.Image, Url = "https://via.placeholder.com/150" }
            };
			
			FilteredMediaItems = new ObservableCollection<MediaItem>(_allMediaItems);
			SelectedSegment = 0;
		}

		public ObservableCollection<MediaItem> FilteredMediaItems
		{
			get => _filteredMediaItems;
			set
			{
				_filteredMediaItems = value;
				OnPropertyChanged();
			}
		}


		public int SelectedSegment
		{
			get => _selectedSegment;
			set
			{
				_selectedSegment = value;
				OnPropertyChanged();
				OnSegmentChanged(value);
			}
		}

		private void OnSegmentChanged(int segment)
		{
			switch (segment)
			{
				case 0:
					FilteredMediaItems = new ObservableCollection<MediaItem>(_allMediaItems);
					break;
				case 1:
					FilteredMediaItems = new ObservableCollection<MediaItem>(_allMediaItems.Where(item => item.Type == MediaType.Image));
					break;
				case 2:
					FilteredMediaItems = new ObservableCollection<MediaItem>(_allMediaItems.Where(item => item.Type == MediaType.Video));
					break;
			}
		}
	}

	public class MediaItem
	{
		public MediaType Type { get; set; }
        public string Title { get; set; }
        public string Url { get; set; }
	}

	public enum MediaType
	{
		Image,
		Video
	}
}