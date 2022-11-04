import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness/constants/my_theme.dart';

class SignUpList extends StatelessWidget {
  const SignUpList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<String> productname = [
      'HOSPITAL',
      'DOCTOR',
      'DRIVER',
      'USER',
      'NURSE',
      'RAW',
      // 'service 7',
      // 'service 8',
    ];

    final List<String> productimage = [
      'lib/assets/image/icons8-hospital-64.png',
      'lib/assets/image/icons8-doctor-64.png',
      'lib/assets/image/icons8-driver-58.png',
      'lib/assets/image/icons8-user-64.png',
      'lib/assets/image/icons8-nurse-94.png',
      'lib/assets/image/icons8-raw-materials-64.png',
      // 'service 7',
      // 'service 8',
    ];
    return Scaffold(
      backgroundColor: MyTheme.ThemeColors,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: MyTheme.ThemeColors,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appPadding / 4,
                  // vertical: appPadding / 60,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.00),
                        Text(
                          'Choose List For',
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: size.width * 0.07,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.00),
                        Container(
                            // height: size.height * 0.1,
                            //width: size.width * 0.5,
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              height: size.height * 0.24,
                              width: size.width * 0.63,
                              decoration: BoxDecoration(
                                  //color: Colors.,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'lib/assets/image/7.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          //         Lottie.asset(
                          //   'lib/assets/image/114223-chat-wirth-doctor.zip',
                          //   fit: BoxFit.fitHeight,
                          //   //_controller.onboardingPages[index].imageAsset,
                          //   height: 130.0,
                          //   //width: 150.0,
                          //   repeat: true,
                          //   reverse: true,
                          //   animate: true,
                          // )
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              // Text(
              //   'Sign Up List ',
              //   style: GoogleFonts.anybody(
              //     color: Colors.black,
              //     fontWeight: FontWeight.w700,
              //     fontSize: size.height * 0.02,
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.00,
              ),
              // Spacer(),
              Expanded(
                child: ListView.builder(
                    itemCount: productname.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: size.height * 0.093,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                                vertical: size.width * 0.0 / 05),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffffffff),
                                      Color(0xffF0FFF0)
                                      //darkPrimary,
                                    ]),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(-1, -1),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey.shade900,
                                  ),
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: size.height * 0.08,
                                    width: size.width * 0.16,
                                    padding: EdgeInsets.all(8),
                                    child: Image.asset(
                                      productimage[index],
                                      // "lib/assets/image/icons8-hospital-64.png",
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          const BoxShadow(
                                            color: Color(0xFFBEBEBE),
                                            offset: Offset(5, 5),
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          ),
                                          const BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-5, -5),
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          ),
                                        ]),
                                  ),
                                  Text(
                                    productname[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Material(
                                    elevation: 2,
                                    color: Colors.black12,
                                    shadowColor: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: size.height * 0.06,
                                      width: size.width * 0.13,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/assets/image/right-arrow.gif'),
                                              fit: BoxFit.fitWidth)),
                                      // child: Image.asset('lib/assets/images/right-arrow.gif')
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // child: child,
                          )
                          // Container(
                          //   height: 100,
                          //   width: 100,
                          //   padding: EdgeInsets.all(8),
                          //   child: Image.asset(
                          //     "lib/assets/image/google.png",
                          //   ),
                          //   decoration: BoxDecoration(
                          //       color: Colors.grey[200],
                          //       borderRadius: BorderRadius.circular(5),
                          //       boxShadow: [
                          //         const BoxShadow(
                          //           color: Color(0xFFBEBEBE),
                          //           offset: Offset(10, 10),
                          //           blurRadius: 30,
                          //           spreadRadius: 1,
                          //         ),
                          //         BoxShadow(
                          //           color: ,
                          //           offset: Offset(-6, -6),
                          //           blurRadius: 5,
                          //           spreadRadius: 1,
                          //         ),
                          //       ]),
                          // ),
                          );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
