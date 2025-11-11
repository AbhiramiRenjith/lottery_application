

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class ProfileSettingsBox extends StatefulWidget {
  const ProfileSettingsBox({super.key});

  @override
  State<ProfileSettingsBox> createState() => _ProfileSettingsBoxState();
}

class _ProfileSettingsBoxState extends State<ProfileSettingsBox> {
  String _selectedLanguage = 'English';

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

       
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.language, color: ColorConstants.greyColorText, size: 30.sp),
                    SizedBox(width: 12.w),
                    Text(
                      '${TextConstants.language} ($_selectedLanguage)',
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: ColorConstants.greyColorText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  color: Colors.white,
                  offset: Offset(0, 40.h),
                  onSelected: (value) {
                    setState(() {
                      _selectedLanguage = value;
                    });
                  },
                  itemBuilder: (context) => [
                    _popupMenuItemWithDivider('Malayalam', 'മലയാളം'),
                    _popupMenuItemWithDivider('English', 'English'),
                    _popupMenuItemWithoutDivider('Hindi', 'हिंदी'),
                  ],
                  child: Icon(Icons.keyboard_arrow_down, color: ColorConstants.greyColorText, size: 26.sp),
                ),
              ],
            ),
          ),

          _divider(),
          _buildProfileRow(Icons.key_outlined, TextConstants.changePassword),
        ],
      ),
    );
  }


  PopupMenuEntry<String> _popupMenuItemWithDivider(String value, String label) {
    return PopupMenuItem<String>(
      value: value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,fontSize: 10.sp
          ),),
           SizedBox(height: 5.h),
          Divider(height: 1, thickness: 0.8, color: Colors.grey.shade300),
        ],
      ),
    );
  }

  PopupMenuEntry<String> _popupMenuItemWithoutDivider(String value, String label) {
    return PopupMenuItem<String>(
      value: value,
      child: Text(label),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 0.8,
      color: ColorConstants.dividerColor,
    );
  }

  Widget _buildProfileRow(IconData icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Row(
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
    );
  }
}
