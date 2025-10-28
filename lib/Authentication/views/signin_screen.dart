import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/dont_have_account_text_widget.dart';
import 'package:lottery_project/constants/appfontsize_constants.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();
  final _passwordControllet = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.helloSignin,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              labelText: TextConstants.phoneNumber,
              keyboardType: TextInputType.phone,
              controller: _phoneNumberController,
            ),
            SizedBox(height: 30.h),
            CustomTextField(
              labelText: TextConstants.password,
              obscureText: true,
              controller: _passwordControllet,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: ColorConstants.gradientDarkBlue,

                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    Text(
                      TextConstants.remenberMe,
                      style: GoogleFonts.poppins(
                        fontSize: AppFontSizeContants.smallText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forget_password');
                  },
                  child: Text(
                    TextConstants.forgetPassword,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w400,
                      fontSize: AppFontSizeContants.smallText,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 35.h),

            CustomButton(text: TextConstants.signIn, onPressed: () {}),
            SizedBox(height: 10.h),
            DonthaveaccountTextWidget(),
          ],
        ),
      ),
    );
  }
}
