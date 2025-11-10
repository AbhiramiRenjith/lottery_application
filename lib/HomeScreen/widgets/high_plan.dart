import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class HighPlan extends StatelessWidget {
  const HighPlan({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.homeGradientDarkBlue,
                    blurRadius: 4.r,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15.h, left: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Container(
                              width: 2.w,
                              height: 16.sp,
                              color: ColorConstants.blueColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          TextConstants.todayFeaturedprediction,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: ColorConstants.blueColor,
                          ),
                        ),

                        Spacer(),

                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Container(
                            width: 42.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              color: ColorConstants.darkGreen,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  TextConstants.high,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.whiteColor,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10.w),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      TextConstants.keralaLotteryFirstPrice,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 10.w),

                          child: Container(
                            width: 42.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorConstants.homeGradientDarkBlue,
                                  ColorConstants.homeGradientLightBlue,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  TextConstants.priceNumber,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstants.whiteColor,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Image.asset(
                          'images/calender.png',
                          width: screenWidth * 0.03,
                          height: screenWidth * 0.03,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          TextConstants.predictionFor,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                TextConstants.yourActivePlan,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
