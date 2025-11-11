

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
      body: Column(
        children: [
          // 🔹 Blue header
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorConstants.homeGradientLightBlue,
                  ColorConstants.homeGradientDarkBlue,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      TextConstants.profile,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.whiteColor,
                        fontSize: 28.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
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
                SizedBox(height: 40.h),
              ],
            ),
          ),

          // 🔹 Plan widget overlapping nicely
          Transform.translate(
            offset: Offset(0, -35.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const PlanWidget(),
            ),
          ),

          // 🔹 Scrollable content under the plan widget
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileDetailsBox(),
                  SizedBox(height: 10.h),
                  Text(
                    TextConstants.settings,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.blackColor,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ProfileSettingsBox(),
                  SizedBox(height: 10.h),
                  Text(
                    TextConstants.settings,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.blackColor,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SettingsBox(),
                  SizedBox(height: 40.h),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.logout,
                        color: ColorConstants.darkRed,
                        size: 18.sp,
                      ),
                      label: Text(
                        TextConstants.logout,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.darkRed,
                          fontSize: 18.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        side: BorderSide(
                          color: ColorConstants.darkRed,
                          width: 2.w,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        minimumSize: Size(360.w, 40.h),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
