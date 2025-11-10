import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/dont_have_account_text_widget.dart';
import 'package:lottery_project/constants/text_constants.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.titleForgetPass,
      child: Form(
        key:_formKey ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(labelText: TextConstants.phoneNumber,keyboardType: TextInputType.phone,
            controller: _phoneNumberController,validator: (value){
                if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
              
            },),
            SizedBox(height: 40.h),
            CustomButton(
              text: TextConstants.sendCode,
              onPressed: () {
                validation(context);
              },
            ),
            SizedBox(height: 15.h),
            DonthaveaccountTextWidget(),
          ],
        ),
      ),
    );
  }
    void validation(BuildContext context) {
    if (_formKey.currentState!.validate()) {
     
      Navigator.pushNamed(context, '/verify_account');
    }
  }
}
