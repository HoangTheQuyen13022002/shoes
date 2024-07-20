import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/presentation/sign/screens/recovery_password_screen.dart';
import 'package:shoes/presentation/sign/screens/sign_up_screen.dart';
import 'package:shoes/presentation/sign/widgets/botton_screen.dart';
import 'package:shoes/presentation/sign/widgets/context.dart';
import 'package:shoes/presentation/widgets/home_navigator.dart';
import 'package:shoes/presentation/sign/widgets/text_filed_screen.dart';

class SignInScreen extends StatelessWidget {
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
                title: 'Hello Again!',
                description: 'Welcome Back You’ve Been Missed!',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: 335,
                height: 218,
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
                      height: 30,
                    ),
                    TextFiledScreen(
                      name: 'Password',
                      hintText: 'Password',
                      isPassword: true,
                      controller: passwordController,
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    const SizedBox(height: 9),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecoveryPasswordScreen()));
                      },
                      child:const Text(
                        'Recovery Password',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
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
              height: 118,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textGray,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 2,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },
                    child: const Text(
                      'Sign Up For Free',
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
