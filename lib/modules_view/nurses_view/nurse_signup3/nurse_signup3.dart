import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_welness/constants/constants/constants.dart';

import 'nursescomponents3/credentials.dart';
import 'nursescomponents3/head_text.dart';

class NursesSignup3 extends StatelessWidget {
  const NursesSignup3({Key? key}) : super(key: key);

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: size.height * 0.029,
                  //bottom: size.height * 0.64,
                  //left: -30,
                  right: size.width * 0.052,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: size.height * 0.230,
                      width: size.width * 0.50,
                      decoration: BoxDecoration(
                          //color: Colors.,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                'lib/assets/background_stack_png/n1.png',
                                // 'lib/assets/background_stack_png/hospitall.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Nurses3HeadText(),
                    Nurses3Credentials(),
                    //HospitalSocial(),
                    //Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
