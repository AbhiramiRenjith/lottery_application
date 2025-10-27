import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/view/welcome/widget/bg_container_widget.dart';
import 'package:lottery_project/components/custom_button.dart';
import 'package:lottery_project/components/custom_textfield.dart';
import 'package:lottery_project/view/welcome/widget/donthaveaccount_text_widget.dart';


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
            Navigator.pushNamed(context, '/verify_account');

          }),
                  SizedBox(height: 15.h),
        
    DonthaveaccountTextWidget()

   
          ],
        ),
      ),
    );
  }
}
