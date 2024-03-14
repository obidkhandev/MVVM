import 'package:all_lesson/utils/style/text_style.dart';
import 'package:all_lesson/view_model/users_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../data/model/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // context.read<UserViewModel>().getAllUsers();
      //   },
      //   child: Icon(Icons.get_app),
      // ),
      body: context.watch<UserViewModel>().isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: context.watch<UserViewModel>().allUsers.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // mainAxisExtent: 250,
                crossAxisCount: 2,
// mainAxisSpacing: 20,
//               crossAxisSpacing: 20

                // crossAxisSpacing:
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

class MyUserWidget extends StatelessWidget {
  final UserModel userModel;

  const MyUserWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      // padding: EdgeInsets.,
      height: 300.h,
      alignment: Alignment.bottomLeft,
      width: double.infinity / 2,
      decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: NetworkImage(userModel.avatarUrl),fit: BoxFit.cover),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 5),
              blurRadius: 5,

            )
          ]),
      child: ListTile(
        title: Text(userModel.name,style: AppTextStyle.interMedium.copyWith(color: Colors.black)),
        subtitle: Text(userModel.state,style: AppTextStyle.interBlack,),
      )
    );
  }
}
