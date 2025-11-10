import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class DonthaveaccountTextWidget extends StatelessWidget {
  const DonthaveaccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 98.w,
              height: 1.h,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.gradientDarkGrey,
                    ColorConstants.gradientLigntgrey,
                  ],
                  end: AlignmentGeometry.topLeft,
                  begin: Alignment.topRight,
                ),
              ),
            ),

            SizedBox(width: 8.w),
            Text(
              TextConstants.or,
              style: GoogleFonts.poppins(
                color: ColorConstants.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              width: 98.w,
              height: 1.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.gradientDarkGrey,
                    ColorConstants.gradientLigntgrey,
                  ],
                  begin: AlignmentGeometry.topLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextConstants.donthaveAccount,
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: ColorConstants.greyColor,
              ),
            ),
            SizedBox(width: 5.w),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize:  Size(0.w, 0.h),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/create_account');
              },
              child: Text(
                TextConstants.signUpTextButton,
                style: GoogleFonts.poppins(
                  color: ColorConstants.blueTextButton,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
