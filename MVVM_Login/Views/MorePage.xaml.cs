namespace MVVM_Login.Views
{
    public partial class MorePage
    {
        public MorePage()
        {
            InitializeComponent();
        }

        private async void OnLicenseTapped(object sender, EventArgs e)
        {
            string licenseText = "This is the license information. \n\n" +
                                 "1. You are free to use this software.\n" +
                                 "2. Redistribution is allowed under certain conditions.\n" +
                                 "3. No warranty is provided.";

            await DisplayAlert("License Information", licenseText, "OK");
        }

        private async void OnDataProtectionTapped(object sender, EventArgs e)
        {
            string dataProtectionText = "This is the data protection information. \n\n" +
                                        "1. Your data is protected.\n" +
                                        "2. We do not share your data with third parties.\n" +
                                        "3. You have the right to access your data.";

            await DisplayAlert("Data Protection Information", dataProtectionText, "OK");
        }

        private async void OnPublisherTapped(object sender, EventArgs e)
        {
            string publisherText = "This is the publisher information. \n\n" +
                                   "1. Published by Mphasis Ltd.\n" +
                                   "2. Contact us at publisher@mphasis.com.";

            await DisplayAlert("Publisher Information", publisherText, "OK");
        }

        private async void OnLegalNoticesTapped(object sender, EventArgs e)
        {
            string legalNoticesText = "These are the legal notices. \n\n" +
                                      "1. All rights reserved.\n" +
                                      "2. Use of this software is subject to terms and conditions.";

            await DisplayAlert("Legal Notices", legalNoticesText, "OK");
        }
    }
    
}