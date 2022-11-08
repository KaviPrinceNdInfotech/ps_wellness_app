import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ps_welness/constants/my_theme.dart';

import '../../controllers/splash_controller/splash_controllerss.dart';

//class SplashScreen extends StatelessWidget {
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.ThemeColors,
      body: GetBuilder<SplashScreenViewModel>(
        init: SplashScreenViewModel(),
        builder: (controller) {
          return SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    Container(
                      height: size.height * 0.39,
                      width: size.width,
                      child: Center(
                        child: Lottie.asset(
                          'lib/assets/image/47383-doctor-welcoming-pacient.zip',
                          fit: BoxFit.contain,
                          //_controller.onboardingPages[index].imageAsset,
                          height: 500.0,
                          width: 500.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                    ),

                    Text(
                      'Welcome To PsWellness!',
                      style: GoogleFonts.lobster(
                        fontWeight: FontWeight.w200,
                        letterSpacing: 2,
                        wordSpacing: 1,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    // Image.asset(
                    //   'lib/assets/image/ps_welness2.png',
                    //   width: controller.animation.value * 200,
                    //   height: controller.animation.value * 200,
                    // ),
                  ],
                ),
                Positioned(
                  top: size.height * 0.03,
                  left: size.width * 0.30,
                  child: Container(
                    height: size.height * 0.18,
                    width: size.width * 0.41,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        // shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'lib/assets/background_stack_png/logoioo.png'),
                          fit: BoxFit.fill,
                        )),
                    //
                    // child: Image.asset(
                    //   'lib/assets/image/ps_welness2.png',
                    //   width: controller.animation.value * 100,
                    //   height: controller.animation.value * 100,
                    //   // color: Colors.white30,
                    // ),
                  ),
                ),
                Positioned(
                  bottom: -size.height * 0.06,
                  left: size.width * 0.0,
                  child: Container(
                    height: size.height * 0.50,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        // shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'lib/assets/background_stack_png/splash4.png'),
                          fit: BoxFit.cover,
                        )),
                    //
                    // child: Image.asset(
                    //   'lib/assets/image/ps_welness2.png',
                    //   width: controller.animation.value * 100,
                    //   height: controller.animation.value * 100,
                    //   // color: Colors.white30,
                    // ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
