import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness/constants/constants/constants.dart';
import 'package:ps_welness/controllers/login_email/login_email_controller.dart';
import 'package:ps_welness/modules_view/sign_up_list/sign_up_list.dart';
import 'package:ps_welness/widgets/widgets/neumorphic_text_field_container.dart';
import 'package:ps_welness/widgets/widgets/rectangular_button.dart';

class Credentials extends StatelessWidget {
  Credentials({Key? key}) : super(key: key);

  LoginpasswordController _loginpasswordController =
      Get.put(LoginpasswordController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _loginpasswordController.loginpasswordformkey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.09, vertical: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NeumorphicTextFieldContainer(
              child: TextFormField(
                controller: _loginpasswordController.emailController,
                onSaved: (value) {
                  _loginpasswordController.email = value!;
                },
                validator: (value) {
                  return _loginpasswordController.validEmail(value!);
                },
                cursorColor: Colors.black,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  helperStyle: TextStyle(
                    color: black.withOpacity(0.7),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: black.withOpacity(0.7),
                    size: 20,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.visiblePassword,
                //obscureText: true,
                //controller: _loginpasswordController.mobileController,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            NeumorphicTextFieldContainer(
              child: TextFormField(
                controller: _loginpasswordController.passwordController,
                onSaved: (value) {
                  _loginpasswordController.password = value!;
                },
                validator: (value) {
                  return _loginpasswordController.validPassword(value!);
                },
                cursorColor: Colors.black,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Password',
                  helperStyle: TextStyle(
                    color: black.withOpacity(0.7),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: black.withOpacity(0.7),
                    size: 20,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            // RectangularInputField(
            //   hintText: 'Password',
            //   icon: Icons.lock,
            //   obscureText: true,
            // ),
            SizedBox(
              height: size.height * 0.00,
              //appPadding / 2,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forget Password?',
                  style: GoogleFonts.alegreya(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.035,
                  ),
                ),
              ),
            ),
            RectangularButton(
                text: 'Sign In',
                press: () {
                  Get.to(SignUpList());
                  //_loginpasswordController.checkLoginpassword();
                })
          ],
        ),
      ),
    );
  }
}
