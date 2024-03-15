import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/user_model.dart';
import '../../../utils/style/text_style.dart';

class MyUserWidget extends StatelessWidget {
  final UserModel userModel;

  const MyUserWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
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