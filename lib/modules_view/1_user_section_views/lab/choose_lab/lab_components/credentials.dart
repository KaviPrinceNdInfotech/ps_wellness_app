import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/modules_view/1_user_section_views/lab/lab_lists/lab_listpage.dart';
import 'package:ps_welness/widgets/widgets/neumorphic_text_field_container.dart';
import 'package:ps_welness/widgets/widgets/rectangular_button.dart';

import '../../../../../controllers/1_user_view_controller/lab_controller/choose_lab_controller/lab_controller.dart';

class LabCredentials extends StatelessWidget {
  LabCredentials({Key? key}) : super(key: key);

  ChooseLabController _chooseLabController = Get.put(ChooseLabController());

  //Doctor_2_Controller _doctor_2_controller = Get.put(Doctor_2_Controller());

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  get newvalue => null!;

  // LoginpasswordController _loginpasswordController =
  //     Get.put(LoginpasswordController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Form(
        key: _chooseLabController.ChooseLabformkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  //height: size.height * 0.02,
                  ),

              SizedBox(
                height: size.height * 0.02,
              ),

              ///Todo: state............................
              SizedBox(
                height: size.height * 0.01,
              ),

              Text(
                'Choose State',
                style: TextStyle(
                  fontSize: size.height * 0.016,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.blueww,
                ),
              ),

              NeumorphicTextFieldContainer(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Obx(
                    () => DropdownButtonFormField(
                        value: _chooseLabController.selectedState.value,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.real_estate_agent,
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        hint: Text('Select State'),
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
                          _chooseLabController.selectedState.value = newValue!;
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

              ///Todo: city.....................................

              SizedBox(
                height: size.height * 0.02,
              ),

              Text(
                'Choose City',
                style: TextStyle(
                  fontSize: size.height * 0.016,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.blueww,
                ),
              ),

              NeumorphicTextFieldContainer(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Obx(
                    () => DropdownButtonFormField(
                        //icon: Icon(Icons.location_city),
                        value: _chooseLabController.selectedCity.value,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.location_city,
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        hint: Text('Selected City'),
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
                          _chooseLabController.selectedCity.value = newValue!;
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

              ///Todo: select test name.....................................

              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Choose Test',
                style: TextStyle(
                  fontSize: size.height * 0.016,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.blueww,
                ),
              ),

              NeumorphicTextFieldContainer(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Obx(
                    () => DropdownButtonFormField(
                        // menuMaxHeight: size.height * 0.06,
                        //icon: Icon(Icons.location_city),
                        value: _chooseLabController.selectedCity2.value,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.text_snippet_outlined,
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        hint: Text('Selected Test'),
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
                          _chooseLabController.selectedCity2.value = newValue!;
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
                height: size.height * 0.018,
                //appPadding / 2,
              ),

              // GetBuilder<Hospital_2_Controller>(
              //   // specify type as Controller
              //   init: Hospital_2_Controller(), // intialize with the Controller
              //   builder: (value) => InkWell(
              //     onTap: () {
              //       _doctor_2_controller.getImage(ImageSource.gallery);
              //     },
              //     child: NeumorphicTextFieldContainer(
              //       child: Container(
              //         height: size.height * 0.07,
              //         //width: size.width * 0.5,
              //         child: Padding(
              //           padding:
              //               EdgeInsets.symmetric(horizontal: size.width * 0.1),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text(
              //                 'Authorise Letter Image',
              //                 style: TextStyle(
              //                   fontSize: size.width * 0.03,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //               Icon(Icons.camera),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              RectangularButton(
                  text: 'SUBMIT',
                  press: () {
                    Get.to(LabListPage());
                    //_loginpasswordController.checkLoginpassword();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
