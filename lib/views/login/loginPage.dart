import 'package:flutter/material.dart';
import 'package:mero_hostel/utils/constant.dart';
import 'package:mero_hostel/widgets/Mytext.dart';
import 'package:mero_hostel/widgets/myTextFormField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.asset(
                  'assets/images/login_sign_Background.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: ScreenHeight * 0.6,
                width: ScreenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: MyText(
                          text: 'Login',
                          color: KTextColor,
                          size: 32,
                          top: 15,
                          bottom: 30,
                        ),
                      ),
                      MyText(
                        text: 'Email',
                        color: KTextColor,
                        size: 20,
                        left: 30,
                      ),
                      MyTextFormField(
                        top: 10,
                        left: 20,
                        right: 20,
                        hintText: 'Enter your email.',
                      ),
                      MyText(
                        text: 'Password',
                        color: KTextColor,
                        size: 20,
                        top: 20,
                        left: 30,
                      ),
                      MyTextFormField(
                        top: 10,
                        left: 20,
                        right: 20,
                        hintText: 'Enter your password.',
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: MyText(
                            top: 10,
                            right: 20,
                            text: 'Forgot Password?',
                            color: Color(0xff0E6A28),
                            size: 18),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
