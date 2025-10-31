import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class HighPlan extends StatelessWidget {
  const HighPlan({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 25.h),
            child: Container(
              height: 110,
             
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(10),
               boxShadow: [
                BoxShadow(
                  color: ColorConstants.homeGradientDarkBlue,
                  
                  blurRadius: 4
                ),
                
               ]
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 10.h,left: 18.w),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [  
                        Container(
                          width: 3,
                          height: 22,
                          decoration: BoxDecoration(
                            color: ColorConstants.blueColor
                
                          ),
                        ),
                        SizedBox(width: 7),
                        Text(TextConstants.todayFeaturedprediction,style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: ColorConstants.blueColor,
                        ),),
                        Spacer(),
                             Container(
                      width:50.w ,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.darkGreen,
                        borderRadius: BorderRadius.circular(2)
                        
                      ),
                      child: Center(
                        child: Text(TextConstants.high,style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.whiteColor,
                          fontSize: 13,
                        ),),
                      ),
                
                    ),
                    SizedBox(width: 10)
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Text(TextConstants.keralaLotteryFirstPrice,style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 5),
                    Row(
                      
                      children: List.generate(5, (index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 42,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              gradient: LinearGradient(colors: [
                                 ColorConstants.homeGradientDarkBlue,
                                ColorConstants.homeGradientLightBlue,
                               
                                        
                                
                              ]),
                              
                            ),
                            child: Center(
                              child: Text(
                                TextConstants.priceNumber,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w500,
                              color: ColorConstants.whiteColor),),
                            ),
                          ),
                        );
                      })
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Image.asset('images/calender.png',width: 18,height: 18,),
                        SizedBox(width: 5),
                        Text(TextConstants.predictionFor,style: GoogleFonts.poppins(fontWeight: FontWeight.w400),)
                
                      ],
                    )
                       
                  ],
                ),
              ),
              
            ),
          ),
          SizedBox(height: 10),
          
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.circular(5)

            ),
            child: Center(child: Text(TextConstants.yourActivePlan,style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),)),
          )
        ],
      ),
    );
  }
}