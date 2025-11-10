import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class WhyUpgradeSection extends StatelessWidget {
  const WhyUpgradeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
   
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          child: Text(
            TextConstants.whyUpgrade,
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.blackColor,
            ),
          ),
        ),

        SizedBox(height: 6.h),

        Column(
          children: whyUpgrade.map((item) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    width: 10.w,
                    height: 10.w,
                    margin: EdgeInsets.only(top: 5.h),
                    decoration: BoxDecoration(
                      color: item['color'],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10.w),

                
                  Expanded(
                    child: Text(
                      item['text'],
                      style: GoogleFonts.poppins(
                        color: ColorConstants.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
