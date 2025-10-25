import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/widget/bg_container_widget.dart';
import 'package:lottery_project/view/signinScreen/widget/custom_button.dart';


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
            TextFormField(
              style: GoogleFonts.poppins(
                color: const Color(0xFF888888),
                fontSize: 15.sp,
              ),
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: GoogleFonts.poppins(
                  fontSize: 22.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFFC1C1C1)),
                ),
              ),
            ),
            SizedBox(height: 40.h),

          CustomButton(text: 'SEND CODE', onPressed: (){

          }),

            SizedBox(height: 40.h),

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
