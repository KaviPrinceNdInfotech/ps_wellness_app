import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_welness/constants/constants/constants.dart';
import 'package:ps_welness/modules_view/franchies_view/franchies_2_view/components_franchies2/credentials.dart';
import 'package:ps_welness/modules_view/franchies_view/franchies_2_view/components_franchies2/head_text.dart';

class FranchiesSignup2 extends StatelessWidget {
  const FranchiesSignup2({Key? key}) : super(key: key);

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
              SizedBox(
                height: size.height * 0.02,
              ),
              Positioned(
                top: size.height * 0.03,
                //bottom: size.height * 0.64,
                //left: -30,
                right: -size.width * 0.006,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: size.height * 0.180,
                    width: size.width * 0.49,
                    decoration: BoxDecoration(
                        //color: Colors.,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/background_stack_png/franchoies2.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Franchies2HeadText(),
                  Franchies2Credentials(),
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
