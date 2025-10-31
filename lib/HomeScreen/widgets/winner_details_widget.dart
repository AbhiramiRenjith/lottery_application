

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class WinnerDetailsWidget extends StatelessWidget {
  const WinnerDetailsWidget({super.key});

  final Map<String, dynamic> winnerDetails = const {
    'name': 'Anithya Suresh',
    'ticketName': 'Bhagyathara',
    'ticketNumber': 'NG-789012',
    'location': 'Kollam, Kerala',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: ColorConstants.lightBlue20,
          border: Border.all(
            color: ColorConstants.homeGradientLightBlue,
            width: 1.5.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Container(
                    width: 52.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.homeGradientLightBlue,
                          ColorConstants.homeGradientDarkBlue,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.w),
                      child: Image.asset('images/prize.png'),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        winnerDetails['name'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: ColorConstants.blackColor,
                        ),
                      ),
                      Text(
                        winnerDetails['ticketName'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorConstants.redColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 5.h),

       
            Padding(
              padding: EdgeInsets.only(left: 65.w,right: 20.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: ColorConstants.grey,
                    width: 1.2.w,
                  ),
                ),


                child: Column(
                  children: [
                  
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 38.w,
                          height: 32,
                          decoration: BoxDecoration(
                            color: ColorConstants.lightGreen20,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Icon(
                            Icons.confirmation_num_outlined,
                            color: ColorConstants.greenClr,
                            size: 22.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextConstants.ticketNumber,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              winnerDetails['ticketNumber'],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        
                      ],
                    ),

                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              TextConstants.prediction,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Image.asset(
                              'images/verified.png',
                              width: 16.w,
                              height: 16.h,
                              
                            ),
                          ],
                        ),

                   
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 38.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color: ColorConstants.lightBlue30,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: ColorConstants.blueColor,
                            size: 22.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextConstants.location,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              winnerDetails['location'],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 65.w, right: 20.w, top: 10.h),
              child: Container(
                height: 1.5.h,
                color: ColorConstants.dividerBlue,
              ),
            ),

          
            Padding(
              padding: EdgeInsets.only(left: 65.w, right: 20.h,top: 5.h),
              child: Row(
                children: [
                  Text(
                    TextConstants.winDate,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5.r,
                        backgroundColor: ColorConstants.greenClr,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        TextConstants.verified,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
