import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness/constants/my_theme.dart';

class AboutUsLabView extends StatelessWidget {
  const AboutUsLabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.ThemeColors,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.ThemeColors,
        elevation: 0,
        title: Text('About Lab'),
        //leading: Icon(Icons.arrow_back_ios_outlined),
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Lab:',
                    style: GoogleFonts.poppins(
                        color: MyTheme.blueww,
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    'A laboratory technician performs mechanical, technical or diagnostic tests in a scientific setting. They often conduct scientific research under the supervision of senior technicians, pathologists or scientists. If you are more interested in the science and technology aspects of the medical field and less about direct patient care, you may want to know more about this career path. In this article, we discuss what a lab technician is, what duties they perform and what skills and qualifications they need to become successful in their career.',
                    style: GoogleFonts.roboto(
                        color: MyTheme.blueww,
                        fontSize: size.width * 0.037,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
