import 'package:flutter/cupertino.dart';

import '../data/model/user_model.dart';
import '../data/repository/user_repo.dart';

class UserViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  UserViewModel({required this.userRepository}) {
    getAllUsers();
  }

  bool isLoading = false;

  List<UserModel> allUsers = [];

  getAllUsers() async {
    isLoading = true;
    notifyListeners();
    var users = await userRepository.getAllUsers();
    isLoading = false;
    notifyListeners();
    if (users.data != []) {
      allUsers = users.data;
      notifyListeners();
    }
  }
}
