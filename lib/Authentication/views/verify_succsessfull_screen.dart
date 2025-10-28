import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';



class VerifySuccsessfullScreen extends StatelessWidget {
  const VerifySuccsessfullScreen({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
         Center(
          child: Padding(
            padding: const EdgeInsets.only(top:225),
            child: Column(
              children: [
                Image.asset('images/success.gif',width: 255.w,height: 255.h,),
                SizedBox(height: 39.h),
                Text(TextConstants.verifySuccess,style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w600,fontSize:28,
                  color: Color(0XFF448AFF)
                ),),
                Text(TextConstants.emailSuccessText,maxLines: 2,style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,color: ColorConstants.labelColor,fontSize: 14
                ),)
              ],
            ),
          ),
        ),
      );

  
  }
}