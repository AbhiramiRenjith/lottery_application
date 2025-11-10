import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

class PriceBox extends StatelessWidget {
  final String title;
  final String prize;
  final String number;
  final String place;

  const PriceBox({
    super.key,
    required this.title,
    required this.prize,
    required this.number,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: ColorConstants.gradientDarkGrey,
            blurRadius: 3.r,
            offset: const Offset(2, 5),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: ColorConstants.blueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.whiteColor,
                  fontSize: 20.sp
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              children: [
                Text(
                  prize,
                  style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5.h),
                
                Text(
                  number,
                  style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w600,
                    fontSize: 18.sp,
                   
                    
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  place,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.prizeGreyColor
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
