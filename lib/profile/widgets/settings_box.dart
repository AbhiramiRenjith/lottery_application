

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

class SettingsBox extends StatelessWidget {
  const SettingsBox({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Prediction History',
      'Help & Support',
      'Terms & Conditions',
      'Privacy & Policy',
    ];

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
        children: List.generate(items.length, (index) {
          final isLast = index == items.length - 1;
          return Column(
            children: [
              InkWell(
                onTap: () {
            
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        items[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: ColorConstants.greyColorText,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16.sp,
                        color: ColorConstants.greyColorText
                      ),
                    ],
                  ),
                ),
              ),
              if (!isLast)
                Divider(
                  height: 1,
                  thickness: 0.8,
                  color: ColorConstants.dividerColor,
                ),
            ],
          );
        }),
      ),
    );
  }
}
