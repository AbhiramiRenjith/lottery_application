

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class ProfileSettingsBox extends StatelessWidget {
  const ProfileSettingsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: ColorConstants.containerLightGreyBorder, 
          width: 1,
        ),
      ),
      child: Column(
        children: [
          _buildProfileRow(Icons.notifications_none, TextConstants.notifications),
          _divider(),
          _buildProfileRow(Icons.language, TextConstants.language, showArrow: true),
          _divider(),
          _buildProfileRow(Icons.key_outlined, TextConstants.changePassword),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 0.8,
      color:ColorConstants.dividerColor,
    );
  }

  Widget _buildProfileRow(IconData icon, String title, {bool showArrow = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: ColorConstants.greyColorText, size: 30.sp),
              SizedBox(width: 12.w),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: ColorConstants.greyColorText,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          if (showArrow)
            Icon(Icons.keyboard_arrow_down, color: ColorConstants.greyColorText, size: 26.sp),
        ],
      ),
    );
  }
}
