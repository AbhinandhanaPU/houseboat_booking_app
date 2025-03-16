import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/utils/validations.dart';
import 'package:houseboat_booking/app/views/auth_screens/login_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/otp_screen.dart';
import 'package:houseboat_booking/app/views/auth_screens/welcome_widget.dart';
import 'package:houseboat_booking/app/widgets/colored_button.dart';
import 'package:houseboat_booking/app/widgets/custom_textfield_with_label.dart';
import 'package:houseboat_booking/app/widgets/phone_no_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: Column(
          spacing: 30,
          children: [
            // intro container
            WelcomeWidget(
              height: 175,
              mainText: 'Create an \nAccount',
            ),

            // expanded space for signup form
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 30,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextfieldWithLabel(
                          text: 'Name',
                          hintText: 'Full name',
                          prefixIcon: Icon(Icons.person),
                          controller: TextEditingController(),
                          validator: Validations.validateName,
                        ),
                        CustomTextfieldWithLabel(
                          text: 'Email',
                          hintText: 'Registerd email address',
                          prefixIcon: Icon(Icons.person),
                          keyboardType: TextInputType.emailAddress,
                          controller: TextEditingController(),
                          validator: Validations.validateEmail,
                        ),
                        Column(
                          spacing: 10,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ' *',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.errorColor,
                                  ),
                                ),
                              ],
                            ),
                            PhoneNumberField(
                              controller: TextEditingController(),
                              validator: Validations.validatePhoneNumber,
                            ),
                          ],
                        ),
                        CustomcoloredButton(
                          text: 'Create an Account',
                          height: 60,
                          width: double.infinity,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OtpScreen(),
                                  ));
                            }
                          },
                        ),
                        Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account?  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.lightGrey,
                                ),
                              ),
                              TextSpan(
                                text: "Sign In",
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
                                          builder: (context) => LoginScreen()),
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
            )
          ],
        ),
      ),
    );
  }
}
