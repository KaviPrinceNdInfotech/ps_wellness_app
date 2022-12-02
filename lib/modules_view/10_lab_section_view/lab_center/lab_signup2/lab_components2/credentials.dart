import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ps_welness/constants/constants/constants.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/controllers/hospital2_controller/hospital2_sighup_controller.dart';
import 'package:ps_welness/controllers/lab_controller/lab_zcontroller2/lab_controller_2.dart';
import 'package:ps_welness/modules_view/10_lab_section_view/lab_home/lab_home_page.dart';
import 'package:ps_welness/widgets/widgets/neumorphic_text_field_container.dart';
import 'package:ps_welness/widgets/widgets/rectangular_button.dart';

class Lab2Credentials extends StatelessWidget {
  Lab2Credentials({Key? key}) : super(key: key);

  Lab_2_Controller _lab_2_controller = Get.put(Lab_2_Controller());

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
        key: _lab_2_controller.lab2formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  //height: size.height * 0.02,
                  ),

              GetBuilder<Hospital_2_Controller>(
                // specify type as Controller
                init: Hospital_2_Controller(), // intialize with the Controller
                builder: (value) => InkWell(
                  onTap: () {
                    _lab_2_controller.getImage(ImageSource.gallery);
                  },
                  child: NeumorphicTextFieldContainer(
                    child: Container(
                      height: size.height * 0.06,
                      //width: size.width * 0.5,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Licence Image File',
                              style: TextStyle(
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(Icons.camera_alt),
                          ],
                        ),
                      ),
                    ),
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
                height: size.height * 0.02,
              ),

              ///TODO: certificate.......................
              NeumorphicTextFieldContainer(
                child: TextFormField(
                  autofillHints: [AutofillHints.name],
                  controller: _lab_2_controller.certificateController,
                  onSaved: (value) {
                    _lab_2_controller.certificateno = value!;
                  },
                  validator: (value) {
                    return _lab_2_controller.validcertificate(value!);
                  },
                  cursorColor: Colors.black,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Licence no',
                    helperStyle: TextStyle(
                      color: black.withOpacity(0.7),
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.offline_pin_rounded,
                      color: black.withOpacity(0.7),
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              ///todo: Gst Number.................
              NeumorphicTextFieldContainer(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autofillHints: [AutofillHints.addressCityAndState],
                  controller: _lab_2_controller.addressController,
                  onSaved: (value) {
                    _lab_2_controller.address = value!;
                  },
                  validator: (value) {
                    return _lab_2_controller.validAddress(value!);
                  },
                  cursorColor: Colors.black,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'GST NO',
                    helperStyle: TextStyle(
                      color: black.withOpacity(0.7),
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.location_history_outlined,
                      color: black.withOpacity(0.7),
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.018,
                //appPadding / 2,
              ),

              ///TODO: Aadhar no.......................
              NeumorphicTextFieldContainer(
                child: TextFormField(
                  autofillHints: [AutofillHints.password],
                  controller: _lab_2_controller.aadhaarController,
                  onSaved: (value) {
                    _lab_2_controller.aadhar = value!;
                  },
                  validator: (value) {
                    return _lab_2_controller.validaadhar(value!);
                  },
                  cursorColor: Colors.black,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Aadhaar No ',
                    helperStyle: TextStyle(
                      color: black.withOpacity(0.7),
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.pin,
                      color: black.withOpacity(0.7),
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.018,
              ),

              GetBuilder<Hospital_2_Controller>(
                // specify type as Controller
                init: Hospital_2_Controller(), // intialize with the Controller
                builder: (value) => InkWell(
                  onTap: () {
                    _lab_2_controller.getImage1(ImageSource.gallery);
                  },
                  child: NeumorphicTextFieldContainer(
                    child: Container(
                      height: size.height * 0.06,
                      //width: size.width * 0.5,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pan Image File',
                              style: TextStyle(
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(Icons.camera_alt),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              ///todo:selected date starting...
              SizedBox(
                height: size.height * 0.018,
              ),

              // Text(
              //   'Choose Starting Time:',
              //   style: TextStyle(
              //     fontSize: size.height * 0.016,
              //     fontWeight: FontWeight.bold,
              //     color: MyTheme.blueww,
              //   ),
              // ),

              NeumorphicTextFieldContainer(
                child: Obx(
                  () => InkWell(
                    onTap: () {
                      _lab_2_controller.chooseTime();
                    },
                    child: Container(
                      height: size.height * 0.06,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Choose Starting Time:',
                                style: TextStyle(
                                  fontSize: size.height * 0.017,
                                  fontWeight: FontWeight.bold,
                                  color: MyTheme.blueww,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              //Spacer(),
                              Text(
                                "${_lab_2_controller.selectedTime.value.hour}:${_lab_2_controller.selectedTime.value.minute}",
                                style: TextStyle(
                                  fontSize: size.height * 0.026,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.018,
              ),

              ///todo:selected time ending...

              // Text(
              //   'Choose Ending Time:',
              //   style: TextStyle(
              //     fontSize: size.height * 0.016,
              //     fontWeight: FontWeight.bold,
              //     color: MyTheme.blueww,
              //   ),
              // ),

              NeumorphicTextFieldContainer(
                child: Obx(
                  () => InkWell(
                    onTap: () {
                      _lab_2_controller.chooseTime2();
                    },
                    child: Container(
                      height: size.height * 0.06,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Choose Ending Time:',
                                style: TextStyle(
                                  fontSize: size.height * 0.017,
                                  fontWeight: FontWeight.bold,
                                  color: MyTheme.blueww,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              //Spacer(),
                              Text(
                                "${_lab_2_controller.selectedTime2.value.hour}:${_lab_2_controller.selectedTime2.value.minute}",
                                style: TextStyle(
                                  fontSize: size.height * 0.026,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              RectangularButton(
                  text: 'SUBMIT',
                  press: () {
                    Get.to(LabHomePage());
                    //_loginpasswordController.checkLoginpassword();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
