import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_welness/constants/constants/constants.dart';

import 'components/credentials.dart';
import 'components/head_text.dart';

class DoctorSignup2 extends StatelessWidget {
  const DoctorSignup2({Key? key}) : super(key: key);

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
                top: size.height * 0.1,
                //bottom: size.height * 0.64,
                //left: -30,
                right: -size.width * 0.035,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: size.height * 0.200,
                    width: size.width * 0.52,
                    decoration: BoxDecoration(
                        //color: Colors.,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/background_stack_png/doctor21.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.013,
                //bottom: size.height * 0.64,
                //left: -30,
                right: -size.width * 0.02,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: size.height * 0.30,
                    width: size.width * 0.50,
                    decoration: BoxDecoration(
                        //color: Colors.,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/background_stack_png/doctor20.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Doctor2HeadText(),
                  Doctor2Credentials(),
                  //HospitalSocial(),
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
