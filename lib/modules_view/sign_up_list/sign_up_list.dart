import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/modules_view/hospital_view/hospital_signup_part_1/hospital_signup_view_part1.dart';

class SignUpList extends StatelessWidget {
  const SignUpList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<String> productname = [
      '  HOSPITAL',
      '  DOCTOR  ',
      '  DRIVER  ',
      '  USER    ',
      '  NURSE   ',
      '  RWA     ',
      '  CHEMIST ',
      '  PATIENT ',
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
      'lib/assets/icons/chemisticon.png',
      'lib/assets/icons/coviddres1.png',
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
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: InkWell(
                            onTap: () {
                              if (index == 0) {
                                Get.to(() => HospitalSignup1());
                              } else if (index == 1) {
                                // Get.to(() => AddTechnician());
                              } else if (index == 2) {
                                //Get.to(() => Profoile());
                              } else if (index == 3) {
                                // whatsAppOpen();
                                // _launchWhatsapp();

                                //Get.to(() => ComplainList());

                              } else if (index == 4) {
                                // launch('tel:+1 888888888888');
                                //_launchWhatsapp();
                                print('okcasll');
                                //Get.to(() => AssociatePage());
                              } else if (index == 5) {
                                // Get.defaultDialog(
                                //     barrierDismissible: true,
                                //     backgroundColor: MyTheme.t1containercolor,
                                //     title: '',
                                //     content: Column(
                                //       mainAxisSize: MainAxisSize.min,
                                //       children: [
                                //         Directionality(
                                //           textDirection: TextDirection.ltr,
                                //           child: Center(
                                //             child: Padding(
                                //               padding:
                                //                   const EdgeInsets.all(0.0),
                                //               child: TextFormField(
                                //                 decoration: InputDecoration(
                                //                   filled: true,
                                //
                                //                   fillColor: MyTheme
                                //                       .t1bacgroundcolors1,
                                //                   hintText:
                                //                       'Enter Service Name',
                                //                   contentPadding:
                                //                       const EdgeInsets.only(
                                //                           left: 14.0,
                                //                           bottom: 4.0,
                                //                           top: 16.0),
                                //                   focusedBorder:
                                //                       OutlineInputBorder(
                                //                     borderSide: new BorderSide(
                                //                         color: Colors.green),
                                //                     borderRadius:
                                //                         new BorderRadius
                                //                             .circular(10),
                                //                   ),
                                //                   enabledBorder:
                                //                       UnderlineInputBorder(
                                //                     borderSide: new BorderSide(
                                //                         color:
                                //                             Colors.transparent),
                                //                     borderRadius:
                                //                         new BorderRadius
                                //                             .circular(10.0),
                                //                   ),
                                //                   //focusedBorder: InputBorder.none,
                                //                   //enabledBorder: InputBorder.none,
                                //                   // errorBorder: InputBorder.none,
                                //                   // border: InputBorder.none,
                                //
                                //                   border: OutlineInputBorder(
                                //                     borderSide: BorderSide(
                                //                         color: Colors.red,
                                //                         width: 2.0),
                                //                     borderRadius:
                                //                         BorderRadius.circular(
                                //                             10),
                                //                   ),
                                //                   // labelText: "Password",
                                //                   prefixIcon: Padding(
                                //                     padding:
                                //                         EdgeInsets.symmetric(
                                //                             vertical:
                                //                                 size.height *
                                //                                     0.012,
                                //                             horizontal:
                                //                                 size.width *
                                //                                     0.02),
                                //                     child: Image.asset(
                                //                       'lib/assets/images/profile.png',
                                //                       color:
                                //                           MyTheme.t1Iconcolor,
                                //                       height: 10,
                                //                       width: 10,
                                //                     ),
                                //                   ),
                                //                 ),
                                //                 keyboardType: TextInputType
                                //                     .visiblePassword,
                                //                 //obscureText: true,
                                //                 // controller:
                                //                 // _registerComplainController.nameController,
                                //                 // onSaved: (value) {
                                //                 //   _registerComplainController.name = value!;
                                //                 // },
                                //                 // validator: (value) {
                                //                 //   return _registerComplainController
                                //                 //       .validateName(value!);
                                //                 // },
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //         // TextField(
                                //         //   //controller: settingsScreenController.categoryNameController,
                                //         //   keyboardType: TextInputType.text,
                                //         //   maxLines: 1,
                                //         //   decoration: InputDecoration(
                                //         //       labelText: 'Service name',
                                //         //       hintMaxLines: 1,
                                //         //       border: OutlineInputBorder(
                                //         //           borderSide: BorderSide(
                                //         //               color: Colors.green,
                                //         //               width: 4.0))),
                                //         // ),
                                //         SizedBox(
                                //           height: 30.0,
                                //         ),
                                //         PhysicalModel(
                                //           color: Colors.white,
                                //           shadowColor: Colors.grey,
                                //           elevation: 4,
                                //           borderRadius:
                                //               BorderRadius.circular(10),
                                //           child: Padding(
                                //             padding: const EdgeInsets.all(3.0),
                                //             child: Container(
                                //               height: size.height * 0.04,
                                //               width: size.width * 0.4,
                                //               decoration: BoxDecoration(
                                //                 color: MyTheme.t1Iconcolor,
                                //                 borderRadius:
                                //                     BorderRadius.circular(10),
                                //               ),
                                //               child: Center(
                                //                 child: Text(
                                //                   'ADD SERVICE',
                                //                   style: TextStyle(
                                //                       color: Colors.white,
                                //                       fontSize: 14.0,
                                //                       fontWeight:
                                //                           FontWeight.w600),
                                //                 ),
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //     radius: 10.0);
                                ///
                                //Get.to(() => ServicesPage());
                              } else if (index == 6) {
                                //Get.to(() => MyHolidayPage());
                              } else if (index == 7) {
                                //Get.to(() => TermsMemberPage());
                              }
                            },
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                      style: GoogleFonts.roboto(
                                        fontSize: size.width * 0.042,
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
                            ),
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
