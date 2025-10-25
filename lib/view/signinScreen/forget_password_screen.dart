import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/components/bg_container_widget.dart';
import 'package:lottery_project/view/signinScreen/components/custom_button.dart';
import 'package:lottery_project/view/signinScreen/components/custom_textfield.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: "Forget\nPassword",
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         CustomTextField(labelText: 'Phone Number'),
            SizedBox(height: 40.h),

          CustomButton(text: 'SEND CODE', onPressed: (){

          }),
                  SizedBox(height: 15.h),
           Row(
             mainAxisAlignment: MainAxisAlignment.center, 
             children: [
               Container(
                 width: 50.w,
                  height: 1, color:
                   Colors.grey.shade300, 
                   ), 
                   SizedBox(width: 8.w),
                    Text( ' Or sign up with',
                     style: GoogleFonts.poppins( color: Color(0xFF676767), 
                     fontWeight: FontWeight.w500, fontSize: 12.sp, ), ), 
                     SizedBox(width: 8.w), 
                     Container( 
                      width: 50.w, 
                      height: 1,
                       color:
                        Colors.grey.shade300, ), ], ),
    

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(fontSize: 12.sp),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF81A6EE),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
