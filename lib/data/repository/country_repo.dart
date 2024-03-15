import 'package:all_lesson/data/network/network.dart';
import '../response/response.dart';

class CountryRepository{
  final NetworkModel networkModel;

  CountryRepository({required this.networkModel});

  Future<MyResponse> getAllCountry()=> NetworkModel.getCountry();
}