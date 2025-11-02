import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

class PredictionCard extends StatelessWidget {
  final String lotteryName, date, prize, plan, ticketNo, status, result;
  final Color? resultColor;

  const PredictionCard({
    super.key,
    required this.lotteryName,
    required this.date,
    required this.prize,
    required this.plan,
    required this.ticketNo,
    required this.status,
    required this.result,
    this.resultColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.only(left: 15,right:15,top: 6 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        
        border: Border.all(color: ColorConstants.containerBorderGreyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                          Text(
            lotteryName,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
          ),
                             Column(
                children: [
                  Text(status,
                  style: GoogleFonts.poppins(
                    color: status == "Pending"
                      ? ColorConstants.yellow
                      : ColorConstants.greenClr,fontWeight: FontWeight.w400,
                      fontSize: 12.sp
                  ),
                  ),
                  SizedBox(height: 5),
                  Container( 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: ColorConstants.homeGradientLightBlue),
                      
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(plan,style: GoogleFonts.poppins(color: ColorConstants.blueColor,fontWeight: FontWeight.w400),),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_month_outlined,color: ColorConstants.greyBlackColor,size: 18,),
                  SizedBox(width: 5),
                  
                    Text(
                date,
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400
                  
                ),
              ),
                ],
              ),
    
            ],
          ),
          SizedBox(height: 5.h),
          Text(
            prize,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              color: ColorConstants.greyBlackColor,
              fontWeight: FontWeight.w400

            ),
          ),
          SizedBox(height: 8.h),

       Container(
  padding: EdgeInsets.all(2.w),
  decoration: BoxDecoration(
    border: Border.all(color: ColorConstants.homeGradientLightBlue),
    borderRadius: BorderRadius.circular(8.r),
  ),
  child: Center(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: ticketNo.substring(0, 2), 
            style: GoogleFonts.poppins(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
          TextSpan(
            text: ticketNo.substring(2), 
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    ),
  ),
),

          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 2,
            decoration: BoxDecoration(
              color: ColorConstants.divider
              
            ),
          ),
          SizedBox(height: 5),
         

          Row(
            children: [
              Icon(Icons.trending_up,color: ColorConstants.blueColor),
                   Text(
              "Result: $result",
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: ColorConstants.greyBlackColor,
                fontWeight: FontWeight.w400
              ),
            ),
            ],
          ),
          SizedBox(height: 10)




        ],
      ),
    );
  }
}