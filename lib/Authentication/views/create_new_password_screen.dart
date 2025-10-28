import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});
  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool _obscureNewPassword = true;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.createNewPass,
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              labelText: TextConstants.newPass,
              obscureText: _obscureNewPassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureNewPassword = !_obscureNewPassword;
                  });
                },
                child: Icon(
                  _obscureNewPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ColorConstants.blackColor,
                  size: 16,
                ),
              ),
            ),
            SizedBox(height: 50.h),
            CustomTextField(
              labelText: TextConstants.conformPass,
              obscureText: _obscurePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                child: Icon(
                  _obscurePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ColorConstants.blackColor,
                  size: 16,
                ),
              ),
            ),
            SizedBox(height: 100),
            CustomButton(
              text: TextConstants.resetpass,
              onPressed: () {
                Navigator.pushNamed(context, '/verify_success');
              },
            ),
          ],
        ),
      ),
    );
  }
}
