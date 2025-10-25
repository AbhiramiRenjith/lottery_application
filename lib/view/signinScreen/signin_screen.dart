
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/forget_password_screen.dart';
import 'package:lottery_project/view/signinScreen/components/bg_container_widget.dart';
import 'package:lottery_project/view/signinScreen/components/custom_button.dart';
import 'package:lottery_project/view/signinScreen/components/custom_textfield.dart';


class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: "Hello\nSign In",
      child: Form(
        child: Column(
          children: [
         CustomTextField(labelText: 'Phone Number'),
            SizedBox(height: 30.h),
           CustomTextField(labelText: 'Password', obscureText: true),
            SizedBox(height: 20.h),
  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: Colors.grey.shade600,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    Text(
                      'Remember me',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ForgetPassword()),
                    );
                  },
                  child: Text(
                    'Forget password?',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),


           CustomButton(text: 'SIGN IN', onPressed: (){

            

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
            SizedBox(height: 5.h),

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
