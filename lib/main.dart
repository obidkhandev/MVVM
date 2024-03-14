import 'package:all_lesson/data/repository/user_repo.dart';
import 'package:all_lesson/view_model/users_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';
import 'data/network/network.dart';

void main() {
  NetworkModel networkModel = NetworkModel();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => UserViewModel(
          userRepository: UserRepository(networkModel: networkModel),
        ),
      ),
    ],
    child: const App(),
  ));
}
