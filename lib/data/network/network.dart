import 'dart:convert';
import 'dart:io';
import 'package:all_lesson/data/model/country_model.dart';
import 'package:all_lesson/data/model/user_model.dart';
import 'package:http/http.dart' as http;
import '../response/response.dart';

class NetworkModel {
  static Future<MyResponse> getAllUsers() async {
    try {
      Uri uri = Uri.parse("https://fifth-exam.free.mockoapp.net/users");
      http.Response response = await http.get(uri);
      if (response.statusCode == HttpStatus.ok) {
        return MyResponse(data: (jsonDecode(response.body) as List?)?.map((e) =>
            UserModel.fromJson(e)).toList() ?? []);
      } else {
        return MyResponse(errorString: "Another Error");
      }
    } catch (error) {
      return MyResponse(errorString: "$error ");
    }
  }

  static Future<MyResponse> getCountry() async {
    try {
      http.Response response = await http.get(
          Uri.parse("https://restcountries.com/v3.1/all"));
      if (response.statusCode == 200) {
        return MyResponse(data: (jsonDecode(response.body) as List?)?.map((e) => CountryModel.fromJson(e)).toList() ?? []);
      }
      return MyResponse(errorString: "Another Error");
    }
    catch (error) {
      rethrow;
    }
  }
}