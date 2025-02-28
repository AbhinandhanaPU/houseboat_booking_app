import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';
import 'package:houseboat_booking/app/widgets/lottie_animation_widget.dart';

class WelcomeWidget extends StatelessWidget {
  final String mainText;
  final String? subText;

  const WelcomeWidget({
    super.key,
    required this.mainText,
    this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: double.infinity,
      color: AppColors.lightPrimary,
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              Text(
                mainText,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              subText != null
                  ? Text(
                      subText!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          Expanded(
            child: LottieWidget(
              animationPath: 'assets/animations/Animation - 1740673073430.json',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
