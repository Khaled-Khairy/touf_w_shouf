import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touf_w_shouf/core/helpers/extensions.dart';
import 'package:touf_w_shouf/core/resources/assets.dart';
import 'package:touf_w_shouf/core/routing/routes.dart';
import 'package:touf_w_shouf/core/widgets/app_button.dart';
import 'package:touf_w_shouf/features/auth/presentation/views/widgets/auth_header.dart';

import '../auth_action_text.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AuthHeader(
            imageAsset: Assets.login,
            title: 'Login',
            subtitle: 'Welcome back! Please enter your details.',
            imageHeight: 255.56.h,
            titleSpacing: 12.h,
            subtitleSpacing: 8.h,
          ),
          LoginForm(),
          AppButton(
            text: "Forget Password?",
            onPressed: () {
              context.pushNamed(Routes.forgotPasswordView);
            },
            variant: ButtonVariant.text,
            width: 327.w,
            height: 38.h,
          ),
          AuthActionText(
            initialText: 'First time here?',
            actionText: 'Sign up for free',
            onActionTap: () {
              context.pushNamed(Routes.signUpView);
            },
          )
        ],
      ),
    );
  }
}
