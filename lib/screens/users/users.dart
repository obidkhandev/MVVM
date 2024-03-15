import 'package:all_lesson/screens/users/widget/my_user_widget.dart';
import 'package:all_lesson/screens/users/view_model/users_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: context.watch<UserViewModel>().isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: context.watch<UserViewModel>().allUsers.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return MyUserWidget(
                  userModel: context.watch<UserViewModel>().allUsers[index],
                );
              },
            ),
    );
  }
}


