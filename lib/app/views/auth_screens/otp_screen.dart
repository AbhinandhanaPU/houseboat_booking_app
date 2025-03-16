import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/views/bottom_nav/bottom_nav_screen.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
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
                      text: "Enter the OTP sent to ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    TextSpan(
                      text: "+91 1234567890",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Pinput(
                length: 6,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  height: 55,
                  width: 46,
                  textStyle: TextStyle(
                    fontSize: 22,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightPrimary.withAlpha(22),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.lightPrimary.withAlpha(128),
                    ),
                  ),
                ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                onSubmitted: (value) async {},
                onCompleted: (pin) => log(pin),
              ),
              CustomcoloredButton(
                text: 'VERIFY & LOGIN',
                height: 60,
                width: double.infinity,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeNavScreen(),
                      ));
                },
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn't recieve the OTP?  ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    TextSpan(
                      text: "RESEND",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightPrimary,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // function to resent otp
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
