import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/dont_have_account_text_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();
  final _passwordControllet = TextEditingController();
  final ValueNotifier<bool> isCheck = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.helloSignin,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              CustomTextField(
                labelText: TextConstants.phoneNumber,
                keyboardType: TextInputType.phone,
                controller: _phoneNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 50.h),
              CustomTextField(
                labelText: TextConstants.password,
                obscureText: true,
                controller: _passwordControllet,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ValueListenableBuilder<bool>(
                        valueListenable: isCheck,
                        builder: (context, value, _) {
                          return Transform.scale(
                            scale: 0.8.sp,
                            child: Checkbox(
                              value: value,
                              onChanged: (newValue) {
                                isCheck.value = newValue ?? false;
                              },
                              activeColor: ColorConstants.gradientDarkBlue,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          );
                        },
                      ),

                      Text(
                        TextConstants.remenberMe,
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.blkColor,
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
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: ColorConstants.blackColor,

                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35.h),
              CustomButton(
                text: TextConstants.signIn,
                onPressed: () {
                  validation(context);
                },
              ),
              SizedBox(height: 10.h),
              DonthaveaccountTextWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void validation(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/bottomNav');
    }
  }
}
