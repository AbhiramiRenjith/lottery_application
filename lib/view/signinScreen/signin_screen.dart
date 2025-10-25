
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/forget_password_screen.dart';
import 'package:lottery_project/view/signinScreen/widget/bg_container_widget.dart';
import 'package:lottery_project/components/custom_button.dart';
import 'package:lottery_project/components/custom_textfield.dart';
import 'package:lottery_project/view/signinScreen/widget/donthaveaccount_text_widget.dart';


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

            SizedBox(height: 35.h),


           CustomButton(text: 'SIGN IN', onPressed: (){

            

           }),
           SizedBox(height: 10.h),
           DonthaveaccountTextWidget(),
          
          ],
        ),
      ),
    );
  }
}
