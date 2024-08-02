using System.Collections.ObjectModel;
using System.Windows.Input;
using System.Linq;
using Microsoft.Maui.Controls;
using MVVM_Login.Models;

namespace MVVM_Login.ViewModels

{
	public class CloudViewModel1 : MainViewModel
	{
		private string _searchText;
		private ObservableCollection<Patient> _patients;
		private ObservableCollection<Patient> _sortedPatients;
		private string _selectedSortOption;
		private string _selectedFilterOption;
		private ObservableCollection<string> _data;
		private ObservableCollection<string> _filteredData;

		public CloudViewModel1()
		{
			SearchCommand = new Command(OnSearch);
			SortCommand = new Command(OnSort);
			SortOptions = new ObservableCollection<string> { "Alphabetical", "Random" };
			FilterOptions = new ObservableCollection<string> { "By name", "By age" };
			Data = new ObservableCollection<string> { "Item 1", "Item 2", "Item 3" }; // Example data
			FilteredData = new ObservableCollection<string>(Data);
		
		// Initialize Patients collection
            Patients = new ObservableCollection<Patient>
            {
               new  Patient { Name = "John,Doe", Age = 30, Condition = "Condition A" },
               new  Patient { Name = "Jane,Smith", Age = 25, Condition = "Condition B" },
               new Patient { Name = "Sam,Brown", Age = 40, Condition = "Condition C" },
			   
			   new Patient { Name = "Wiiliam,Smith", Age = 38, Condition = "Condition D" },
			   new Patient { Name = "Angalina", Age = 34, Condition = "Condition C" }

            };
			SortedPatients = new ObservableCollection<Patient>(Patients);
        }
		public ICommand SortCommand { get; }
		public ObservableCollection<Patient> Patients
        {
            get => _patients;
            set => SetProperty(ref _patients, value);
        }
		public ObservableCollection<Patient> SortedPatients
        {
            get => _sortedPatients;
            set => SetProperty(ref _sortedPatients, value);
        }

        private void OnSort()
        {
            var sortedList = Patients.OrderBy(p => p.Name).ToList();
            SortedPatients.Clear();
            foreach (var patient in sortedList)
            {
                SortedPatients.Add(patient);
            }
        }

        /*public ObservableCollection<Patient> Patients
        {
            get => _patients;
            set => SetProperty(ref _patients, value);
        }*/


		public string SearchText
		{
			get => _searchText;
			set => SetProperty(ref _searchText, value);
		}
		private string _exampleProperty;
		public string ExampleProperty
		{
    		get => _exampleProperty;
    		set => SetProperty(ref _exampleProperty, value);
		}

		public ICommand SearchCommand { get; }

		public ObservableCollection<string> SortOptions { get; }

		public string SelectedSortOption
		{
			get => _selectedSortOption;
			set => SetProperty(ref _selectedSortOption, value);
		}

		public ObservableCollection<string> FilterOptions { get; }

		public string SelectedFilterOption
		{
			get => _selectedFilterOption;
			set => SetProperty(ref _selectedFilterOption, value);
		}

		public ObservableCollection<string> Data
		{
			get => _data;
			set => SetProperty(ref _data, value);
		}

		public ObservableCollection<string> FilteredData
		{
			get => _filteredData;
			set => SetProperty(ref _filteredData, value);
		}

		private void OnSearch()
		{
			if (string.IsNullOrWhiteSpace(SearchText))
			{
				FilteredData = new ObservableCollection<string>(Data);
			}
			else
			{
				FilteredData = new ObservableCollection<string>(
					Data.Where(item => item.Contains(SearchText, StringComparison.OrdinalIgnoreCase)));
			}
		}
	}
}