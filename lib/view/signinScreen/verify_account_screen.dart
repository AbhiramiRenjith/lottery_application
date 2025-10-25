import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/widget/bg_container_widget.dart';
import 'package:lottery_project/components/custom_button.dart';
import 'package:lottery_project/view/signinScreen/widget/donthaveaccount_text_widget.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: 'Verify your\n account',
      child: Column(
        children: [
          SizedBox(height: 20.h),    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 54.w,
                height: 54.h,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: const BorderSide(color: Color(0XFFD4D4D4)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              );
            }),
          ),

         
          Padding(
            padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 5.h),
            child: Row(
      
              children: [
                Text(
                  "Resend Otp",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: const Color(0XFFFF0D0D),
                  ),
                ),
                Spacer(),
                Text(
                  "1:25",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Color(0XFF055C9D),
                    
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 45.h),
          CustomButton(
            text: "VERIFY",
            onPressed: () {
        
            },
          ),
              SizedBox(height: 15.h),

 DonthaveaccountTextWidget(),
        ],
      ),
    );
  }
}
