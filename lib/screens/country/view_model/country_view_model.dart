import 'package:all_lesson/data/repository/country_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../data/model/country_model.dart';

class CountryViewModel extends ChangeNotifier{
  final CountryRepository countryRepository;
  CountryViewModel({required this.countryRepository}){
    getAllCountries();
  }

  bool isLoading = false;

  List<CountryModel> countries = [];

  Future<void> getAllCountries() async{
    isLoading = true;
    notifyListeners();
    var country = await countryRepository.getAllCountry();
    isLoading = false;
    notifyListeners();
    if(country.data.isNotEmpty){
      countries = country.data;
      notifyListeners();
    }
  }
}