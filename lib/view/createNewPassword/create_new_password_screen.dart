import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/components/custom_button.dart';
import 'package:lottery_project/components/custom_textfield.dart';
import 'package:lottery_project/view/welcome/widget/bg_container_widget.dart';


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
      title: 'Create new\n password',
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              labelText: "New Password",
              obscureText: _obscureNewPassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureNewPassword = !_obscureNewPassword;
                  });
                },
                child: Icon(
                  _obscureNewPassword ?
                     Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: Colors.black,
                  size: 16.sp, 
                ),
              ),
            ),
            SizedBox(height: 50.h),
            CustomTextField(
              labelText: "Confirm Password",
              obscureText: _obscurePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                child: Icon(
                  _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: Colors.black,
                   size: 16.sp, 
                ),
              ),
            ),
            SizedBox(height: 100),
            CustomButton(text: "RESET PASSWORD", onPressed: (){
              Navigator.pushNamed(context, '/verify_success');


            })
          ],
        ),
      ),
    );
  }
}
