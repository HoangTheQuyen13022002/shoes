import 'package:flutter/material.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/presentation/sign/widgets/botton_screen.dart';
import 'package:shoes/presentation/sign/widgets/context.dart';
import 'package:shoes/presentation/sign/widgets/elevated_buttom_item.dart';
import 'package:shoes/presentation/widgets/home_navigator.dart';
import 'package:shoes/presentation/sign/widgets/text_filed_screen.dart';

class RecoveryPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA).withOpacity(0.95),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 52,left: 20),
              child:  HomeNavigator(iconNavigator: 'assets/icons/back.svg'),
            ),
            const SizedBox(
              height: 32,
            ),
            const Center(
              child: Context(
                title: 'Recovery Password',
                description: 'Please Enter Your Email Address To Recieve a Verification Code',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFiledScreen(
                      name: 'Email Address',
                      hintText: 'Email',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const ElevatedButtomItem(
                      textElevatedButton: 'Continue',
                      colorElevatedButton: AppColors.blue,
                      colorTextElevatedButton: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
