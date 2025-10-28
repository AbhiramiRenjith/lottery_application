
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/radius_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorConstants.gradientLightBlue,
              ColorConstants.gradientDarkBlue,
            ],
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 321.h, left: 30.w, right: 30.w, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
         
                Text(
                  TextConstants.welcome,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: ColorConstants.whiteColor,
                  ),
                ),

                SizedBox(height: 100.h),

              
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.transparent,
                    shadowColor: ColorConstants.transparent,
                    side: BorderSide(color: ColorConstants.whiteColor, width: 1.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: RadiusConstants.largeBtnRadius,
                    ),
                    fixedSize: Size(305.w, 57.h),
                  ),
                  child: Text(
                    TextConstants.signIn,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: 35.h),

              
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_account');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.whiteColor,
                    shadowColor: ColorConstants.transparent,
                    side: BorderSide(color: ColorConstants.whiteColor, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: RadiusConstants.largeBtnRadius,
                    ),
                    fixedSize: Size(305.w, 57.h),
                  ),
                  child: Text(
                    TextConstants.signUp,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.blackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: 50.h),

              
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    TextConstants.loginWithSocialMedia,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
