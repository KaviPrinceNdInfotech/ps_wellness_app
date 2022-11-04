import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_welness/constants/constants/constants.dart';
import 'package:ps_welness/modules_view/sign_in/components/social.dart';

import 'components/credentials.dart';
import 'components/head_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            lightPrimary,
            darkPrimary,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -320,
                //left: -30,
                right: -120,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: size.height * 0.50,
                    width: size.width,
                    decoration: BoxDecoration(
                        //color: Colors.,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/image/1.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadText(),
                  Credentials(),
                  Social(),
                  //Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
