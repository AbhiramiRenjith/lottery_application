
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/profile/widgets/plan_widget.dart';
import 'package:lottery_project/profile/widgets/profile_details_box.dart';
import 'package:lottery_project/profile/widgets/profile_setting_box.dart';
import 'package:lottery_project/profile/widgets/settings_box.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.homeGradientLightBlue,
                    ColorConstants.homeGradientDarkBlue,
                  ],
              
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        TextConstants.profile,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.whiteColor,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: const AssetImage('images/profile.png'),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    TextConstants.userName,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.sp,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                  Text(
                    TextConstants.phnNumber,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: Offset(0, -20.h),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: PlanWidget(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileDetailsBox(),
                  SizedBox(height: 10),
                  Text(
                    TextConstants.settings,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.blackColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  ProfileSettingsBox(),
                  SizedBox(height: 10),
                  Text(
                    TextConstants.settings,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.blackColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  SettingsBox(),
                ],
              ),
              
            ),

       Padding(
         padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
         child: ElevatedButton.icon(
           onPressed: () {
          
           },
           icon: Icon(
             Icons.logout,
             color: ColorConstants.darkRed,
           ),
           label: Text(
             TextConstants.logout,
             style: GoogleFonts.poppins(
               fontWeight: FontWeight.w400,
               color: ColorConstants.darkRed,
             ),
           ),
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.white, 
             shadowColor: Colors.transparent, 
             side: BorderSide(
               color: ColorConstants.darkRed, 
               width: 2,
             ),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8),
             ),
             minimumSize: Size(360,30)
           ),
         ),
       )
          ],
        ),
      ),
    );
  }
}
