import 'package:connect_fb/colors.dart';
import 'package:connect_fb/domain/app_utils.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 270,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.PrimaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(130)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  right: 10,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/image/signup.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Create your account",
                        style: myTextStyle30(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
