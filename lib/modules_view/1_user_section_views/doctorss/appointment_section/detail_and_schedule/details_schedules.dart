import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/modules_view/1_user_section_views/doctorss/appointment_checkout/appointment_checkout.dart';
//import 'package:ps_welness/modules_view/1_user_section_views/appointment_checkout/appointment_checkout.dart';

class DetailsSchedulePage extends StatelessWidget {
  DetailsSchedulePage({Key? key, this.bevel = 2.0}) : super(key: key);
  final double bevel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.ThemeColors,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.02),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.001,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.21,
                          width: size.width * 0.24,
                          child: Image(
                            image: AssetImage(
                                'lib/assets/background_stack_png/doc02.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height * 0.266,
              child: Container(
                height: size.height * 0.05,
                width: size.width,
                decoration: BoxDecoration(
                    color: MyTheme.ThemeColors,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.007,
                    ),
                    Text(
                      'Over 5 years of experience',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.3,
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.height * 0.01),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Dr. Kumar Prince',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.025,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.009,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Cardiologist',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.009,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Fees: ₹500',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                            color: Colors.red.shade300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          maxLines: 9,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            //fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.016,
                            //color: Colors.red.shade300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Book a Date:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.height * 0.02,
                            //color: Colors.red.shade300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                        width: size.width,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 32,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: PhysicalModel(
                                  color: MyTheme.white,
                                  borderRadius: BorderRadius.circular(5),
                                  elevation: 20,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.004),
                                    child: Container(
                                      //height: size.height * 0.025,
                                      width: size.width * 0.17,
                                      decoration: BoxDecoration(
                                        color: MyTheme.ThemeColors,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'MAR',
                                            style: TextStyle(
                                              fontSize: size.height * 0.015,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.01,
                                          ),
                                          Text(
                                            '${index}',
                                            style: TextStyle(
                                              fontSize: size.height * 0.016,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Book a Time:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.height * 0.02,
                            //color: Colors.red.shade300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                        width: size.width,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 32,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Ink(
                                  child: PhysicalModel(
                                    color: MyTheme.white,
                                    borderRadius: BorderRadius.circular(5),
                                    elevation: 20,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.01,
                                          vertical: size.height * 0.004),
                                      child: Container(
                                        //height: size.height * 0.025,
                                        width: size.width * 0.17,
                                        decoration: BoxDecoration(
                                          color: MyTheme.ThemeColors,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '10:00',
                                              style: TextStyle(
                                                fontSize: size.height * 0.015,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.02,
              left: size.width * 0.0,
              right: size.width * 0.00,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => AppointmentCheckout());
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  clipBehavior: Clip.none,
                  child: Container(
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            width: bevel, color: Color(0xFFFFFFFFFF)),
                        left: BorderSide(
                            width: bevel, color: Color(0xFFFFFFFFFF)),
                        right: BorderSide(
                            width: bevel, color: Color(0xFFFF000000)),
                        bottom: BorderSide(
                            width: bevel, color: Color(0xFFFF000000)),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: bevel, color: Color(0xFFFFDFDFDF)),
                            left: BorderSide(
                                width: bevel, color: Color(0xFFFFDFDFDF)),
                            right: BorderSide(
                                width: bevel, color: Color(0xFFFF7F7F7F)),
                            bottom: BorderSide(
                                width: bevel, color: Color(0xFFFF7F7F7F)),
                          ),
                          color: MyTheme.white
                          //Color(0xFFBFBFBF),
                          ),
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: size.height * 0.02),
                        ),
                      ),
                    ),
                  ),
                ),

                // Container(
                //   height: 50.0,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //           borderRadius: new BorderRadius.circular(10.0),
                //         ),
                //         elevation: 0,
                //         backgroundColor: Colors.white,
                //         padding:
                //             EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                //         textStyle: TextStyle(
                //             fontSize: size.height * 0.017,
                //             fontWeight: FontWeight.bold)),
                //     clipBehavior: Clip.none,
                //     onPressed: () {},
                //     //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                //     //padding: EdgeInsets.all(0.0),
                //     child: Ink(
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                //             begin: Alignment.centerLeft,
                //             end: Alignment.centerRight,
                //           ),
                //           borderRadius: BorderRadius.circular(10.0)),
                //       child: Container(
                //         constraints:
                //             BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                //         alignment: Alignment.center,
                //         child: Text(
                //           "Book an Appointment",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Positioned(
// bottom: size.height * 0.001,
// left: size.width * 0.0,
// right: size.width * 0.00,
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
// child: ElevatedButton(
// style: ElevatedButton.styleFrom(
// shape: RoundedRectangleBorder(
// borderRadius: new BorderRadius.circular(30.0),
// ),
// elevation: 0,
// backgroundColor: Colors.white,
// padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
// textStyle:
// TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
// clipBehavior: Clip.none,
// onPressed: () {},
// child: Container(
// height: 50.0,
// //width: size.width * 0.9,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(30),
// ),
// child: Container(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [Color(0xff374ABE), Color(0xff64B6FF)],
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// ),
// borderRadius: BorderRadius.circular(30.0)),
// child: Container(
// constraints:
// BoxConstraints(maxWidth: 900.0, minHeight: 50.0),
// alignment: Alignment.center,
// child: Text(
// "Book Apointment",
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.white,
// fontSize: size.height * 0.016,
// fontWeight: FontWeight.w800,
// ),
// ),
// ),
// ),
// ),
// ),
// ),
// ),
