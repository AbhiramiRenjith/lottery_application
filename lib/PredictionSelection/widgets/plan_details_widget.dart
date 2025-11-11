

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/upgradePlan/data/data.dart';

class PlanSelectionWidget extends StatelessWidget {
  final int planIndex;
  const PlanSelectionWidget({super.key, required this.planIndex});

  @override
  Widget build(BuildContext context) {
    final plan = plans[planIndex];

    return Container(
     
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: ColorConstants.containerBorderGreyColor,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50.w,
                  height: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: plan['color'],
                  ),
                  child: Icon(
                    plan['icon'],
                    color: ColorConstants.whiteColor,
                    size: 28.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan['title'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: ColorConstants.blackColor,
                        ),
                      ),
                      Text(
                        plan['subtitle'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: ColorConstants.greyText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: plan['price'],
                    style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  TextSpan(
                    text: ' / month',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: ColorConstants.containerBorderGreyColor),
            Row(
              children: [
                Icon(Icons.trending_up, color: ColorConstants.blueColor),
                SizedBox(width: 5.w),
                Text(TextConstants.predictions),
              ],
            ),
            Text(TextConstants.predictionsperMonths),
            Divider(color: ColorConstants.containerBorderGreyColor),
            SizedBox(height: 10.h),
           
               SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: plan['features'].map<Widget>((feature) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: plan['color'],
                            size: 16.sp,
                          ),
                          SizedBox(width: 6.w),
                          Expanded(
                            child: Text(
                              feature,
                              style: GoogleFonts.poppins(
                                color: ColorConstants.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            

         SizedBox(height: 15.h),

            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: plan['color'],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  elevation: 3,
                ),
                child: Text(
                  'Upgrade Now',
                  style: GoogleFonts.poppins(
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
