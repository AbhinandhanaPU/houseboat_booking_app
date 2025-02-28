import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/views/auth_screens/signup_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/welcome_widget.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
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
            WelcomeWidget(
              height: 163,
              mainText: 'Welcome\nBack!',
              subText: 'Login into your acoount',
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
                        text: 'Get OTP',
                        height: 60,
                        width: double.infinity,
                      ),
                      Text.rich(
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
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()),
                                  );
                                },
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
