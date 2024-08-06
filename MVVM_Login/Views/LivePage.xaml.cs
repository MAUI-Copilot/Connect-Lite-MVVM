using Microsoft.Maui.Controls;
using System;

namespace MVVM_Login.Views
{
    public partial class LivePage : ContentPage
    {
        public LivePage()
        {
            InitializeComponent();
            PlayYouTubeVideo();
        }

       
        private void PlayYouTubeVideo()
        {
            var youtubeUrl = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
            YouTubeMediaElement.Source = youtubeUrl;
        }
    }
}