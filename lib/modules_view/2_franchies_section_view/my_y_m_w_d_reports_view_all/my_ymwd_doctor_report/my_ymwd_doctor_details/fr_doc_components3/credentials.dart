import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/widgets/widgets/neumorphic_text_field_container.dart';

import '../../../../../../controllers/2_franchises_controller/my_ymwd_report_controller/my_ymwd_report_controller.dart';
//import '../../../../controllers/2_franchises_controller/my_ymwd_report_controller/my_ymwd_report_controller.dart';

class MyYmwdreportVehicleCredential extends StatelessWidget {
  MyYmwdreportVehicleCredential({Key? key}) : super(key: key);

  YmwdController _ymwd_controller = Get.put(YmwdController());

  var items = [
    'Daily',
    'Monthly',
    'Yearly',
    'Weekly',
  ];

  get newvalue => null!;

  // LoginpasswordController _loginpasswordController =
  //     Get.put(LoginpasswordController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          // Positioned(
          //   top: -size.height * 0.04,
          //   //bottom: size.height * 0.64,
          //   //left: -30,
          //   right: -size.width * 0.1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(2.0),
          //     child: Container(
          //       height: size.height * 0.23,
          //       width: size.width * 0.65,
          //       decoration: BoxDecoration(
          //           //color: Colors.,
          //           borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(20),
          //           ),
          //           image: DecorationImage(
          //               image: AssetImage(
          //                 'lib/assets/background_stack_png/vehicle1.png',
          //               ),
          //               fit: BoxFit.cover)),
          //     ),
          //   ),
          // ),
          Form(
            key: _ymwd_controller.ymwdformkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.032),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                        height: size.height * 0.035,
                        width: size.width * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.white70, shape: BoxShape.circle),
                        child:
                            Center(child: Icon(Icons.arrow_back_ios_outlined))),
                  ),
                  SizedBox(
                    height: size.width * 0.05,
                  ),
                  Text(
                    'DOCTOR!',
                    style: GoogleFonts.alatsi(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff023382)),
                  ),
                  // child: DropdownButton(
                  //     value: _hospital_2_controller.selectedState.value,
                  //     menuMaxHeight: size.height * 0.3,
                  //     items: items.map((String items) {
                  //       return DropdownMenuItem(
                  //         value: items,
                  //         child: Text(items),
                  //       );
                  //     }).toList(),
                  //     // _hospital_2_controller.states.map((String value) {
                  //     //   return DropdownMenuItem(
                  //     //     value: value,
                  //     //
                  //     //   )
                  //     onChanged: (String? newValue) {
                  //       _hospital_2_controller.states.value =
                  //           newValue! as List<String>;
                  //       _hospital_2_controller.selectedCity.value = null;
                  //       _hospital_2_controller.cities.clear();
                  //       _hospital_2_controller.cities
                  //           .addAll(stateCityMap[newvalue]!);
                  //     })),

                  SizedBox(
                    height: size.height * 0.01,
                  ),

                  NeumorphicTextFieldContainer(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.01),
                      child: Obx(
                        () => DropdownButtonFormField(
                            //icon: Icon(Icons.location_city),
                            value: _ymwd_controller.selectedCity.value,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.list_alt,
                                color: Colors.black,
                              ),
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                            ),
                            hint: Text('Select Any'),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.height * 0.015,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              _ymwd_controller.selectedCity.value = newValue!;
                              // _hospital_2_controller.states.value =
                              //     newValue! as List<String>;
                              // _hospital_2_controller.selectedCity.value = null;
                              // _hospital_2_controller.cities.clear();
                              // _hospital_2_controller.cities
                              //     .addAll(stateCityMap[newvalue]!);
                            }),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.0),
                    child: Row(
                      children: [
                        Container(
                          //height: size.height * 0.02,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(30.0)),
                              color: MyTheme.containercolor14),
                          width: size.width * 0.72,
                          height: size.height * 0.06,
                          margin: new EdgeInsets.fromLTRB(1, 20, 10, 20),
                          padding: new EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(splashColor: Colors.transparent),
                            child: Obx(
                              () => (_ymwd_controller.isLoading.value)
                                  ? Center(child: CircularProgressIndicator())
                                  : TextField(
                                      controller: _ymwd_controller
                                          .appointmentController1,
                                      onTap: () {
                                        _ymwd_controller.chooseDate();
                                      },
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: MyTheme.blueww),
                                      decoration: InputDecoration(
                                        //prefixIcon: Icon(Icons.search),
                                        filled: true,
                                        fillColor: MyTheme.ThemeColors,
                                        hintText: 'dd-mm-yyyy',
                                        contentPadding: const EdgeInsets.only(
                                            left: 10.0, bottom: 12.0, top: 0.0),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: MyTheme.ThemeColors),
                                          borderRadius:
                                              BorderRadius.circular(25.7),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(25.7),
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                            //color: MyTheme.blueww,
                            gradient: MyTheme.gradient2,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.035,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
