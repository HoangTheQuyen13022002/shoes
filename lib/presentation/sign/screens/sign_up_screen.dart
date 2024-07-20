import 'package:flutter/material.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/presentation/sign/screens/sign_in_screen.dart';
import 'package:shoes/presentation/sign/widgets/botton_screen.dart';
import 'package:shoes/presentation/sign/widgets/context.dart';
import 'package:shoes/presentation/widgets/home_navigator.dart';
import 'package:shoes/presentation/sign/widgets/text_filed_screen.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController yourNameController = TextEditingController();
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
                title: 'Create Account',
                description: 'Let’s Create Account Together',
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
                      name: 'Your Name',
                      hintText: '',
                      controller: yourNameController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFiledScreen(
                      name: 'Email Address',
                      hintText: '',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFiledScreen(
                      name: 'Password',
                      hintText: '',
                      isPassword: true,
                      controller: passwordController,
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      'Recovery Password',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: BottonScreen(),
            ),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGray,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 2,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
