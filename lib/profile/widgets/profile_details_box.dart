


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class ProfileDetailsBox extends StatelessWidget {
  const ProfileDetailsBox({super.key});

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
          _buildDetailRow(Icons.person_outline, TextConstants.name, profileDetails['name']),
          _divider(),
          _buildDetailRow(Icons.location_on_outlined,TextConstants.location, profileDetails['location']),
          _divider(),
          _buildDetailRow(Icons.phone_outlined, TextConstants.phoneNumber, profileDetails['PhoneNumber']),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 0.8,
      color:ColorConstants.dividerColor ,
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, color: ColorConstants.iconGreyColor, size: 30.sp),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: ColorConstants.labelGreyColor,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                data,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: ColorConstants.greyColorText ,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
