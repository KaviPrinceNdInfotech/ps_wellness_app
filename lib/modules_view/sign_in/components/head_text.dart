import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ps_welness/constants/my_theme.dart';

class HeadText extends StatelessWidget {
  const HeadText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Container(
                  // height: size.height * 0.1,
                  //width: size.width * 0.5,
                  child: Center(
                      child: Lottie.asset(
                'lib/assets/image/114223-chat-wirth-doctor.zip',
                fit: BoxFit.fitHeight,
                //_controller.onboardingPages[index].imageAsset,
                height: 130.0,
                //width: 150.0,
                repeat: true,
                reverse: true,
                animate: true,
              ))),
            ],
          ),
        ],
      ),
    );
  }
}
