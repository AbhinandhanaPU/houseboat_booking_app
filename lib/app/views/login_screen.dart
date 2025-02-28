import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/lottie_animation_widget.dart';
import 'package:houseboat_booking/app/widgets/phone_no_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // welcome text with lottie animation
            Container(
              height: 180,
              width: double.infinity,
              color: AppColors.lightPrimary,
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      Text(
                        'Welcome\nBack!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Login into your acoount',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: LottieWidget(
                      animationPath:
                          'assets/animations/Animation - 1740673073430.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            //login - phone number field
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Form(
                  key: formKey,
                  child: Column(
                    spacing: 30,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Phone Verification',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "We will send you an ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.lightGrey,
                              ),
                            ),
                            TextSpan(
                              text: "One Time Password ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "on this mobile number",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.lightGrey,
                              ),
                            ),
                            TextSpan(
                              text: '\nYour Mobile Number is...',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PhoneNumberField(
                        controller: TextEditingController(),
                      ),
                      CustomcoloredButton(
                        text: 'Submit',
                        height: 60,
                        width: double.infinity,
                      ),
                      const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Dont have an account?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.lightGrey,
                              ),
                            ),
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.lightPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
