import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class PredictedNumbersWidget extends StatelessWidget {
  const PredictedNumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                       Container(
          width: 75.w,
          height: 70.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
               ColorConstants.homeGradientLightBlue,
                 ColorConstants.homeGradientDarkBlue,
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Image.asset('images/starr.png'),
            // child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
          ),
        ),
            Text(
          'Prediction Generated',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'Here are your  AI-powered predictions for Bhagyathara',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyText,
            fontSize: 14.sp
          ),
        ),
        SizedBox(height: 20),
              Row(
             mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 10.w,left: 10.w),

                          child: Container(
                            width: 50.w,
                            height: 30.h,
                          
                            decoration: BoxDecoration(
                            
                              gradient: LinearGradient(
                              
                                
                                colors: [
                                  ColorConstants.blueColor,
                                  ColorConstants.darkGreen,
                                  
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight
                                
                                
                              ),
                              
                              
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  TextConstants.priceNumber,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants.whiteColor,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),

        Text("AI analyzed recent draw patterns and generated these predictions.",
        textAlign: TextAlign.center,
         style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyText,
            fontSize: 14.sp
          ),),

            Text("Tap 'Generate Predictions' to start", style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyText,
            fontSize: 16.sp
          ),),
          SizedBox(height: 25.h)
        

      ],
    );

  }
}