
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class AvailablePrizes extends StatelessWidget {
  final String? lotteryImage;
  const AvailablePrizes({super.key, this.lotteryImage});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: prizeCategory.length,
      itemBuilder: (context, index) {
        final prize = prizeCategory[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 15.h,right: 15.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: ColorConstants.blue,
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.greyColorText,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r)
                  )
               
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      SizedBox(width: 10.w),
                      Container(
                        width: 53.w,
                        height: 48.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ColorConstants.homeGradientLightBlue,
                              ColorConstants.homeGradientDarkBlue,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: ColorConstants.whiteColor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(6.w),
                            child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
                         // child: Image.asset('images/bhagyathara.png'),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prize['prize'],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: ColorConstants.greyBlackColor,
                            ),
                          ),
                          Text(
                            prize['amount'],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: ColorConstants.darkGreen,
                            ),
                          ),
                          Text(
                            prize['date'],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.sp,
                              color: ColorConstants.greyBlackColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            ColorConstants.blueColor,
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          minimumSize:
                              WidgetStateProperty.all(const Size(30, 30)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/prediction');
                        },
                        child: Text(
                          'PREDICT',
                          style: GoogleFonts.poppins(
                            color: ColorConstants.whiteColor,
                            fontWeight: FontWeight.w500,
                         
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  
}