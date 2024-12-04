import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touf_w_shouf/core/resources/assets.dart';
import 'package:touf_w_shouf/core/resources/colors.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Image.asset(
        Assets.logo,
        width: 100.w,
        height: 50.h,
      ),
      backgroundColor: AppColors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}