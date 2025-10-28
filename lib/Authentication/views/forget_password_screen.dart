import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/dont_have_account_text_widget.dart';
import 'package:lottery_project/constants/text_constants.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.titleForgetPass,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(labelText: TextConstants.phoneNumber),
            SizedBox(height: 40.h),

            CustomButton(
              text: TextConstants.sendCode,
              onPressed: () {
                Navigator.pushNamed(context, '/verify_account');
              },
            ),
            SizedBox(height: 15.h),

            DonthaveaccountTextWidget(),
          ],
        ),
      ),
    );
  }
}
