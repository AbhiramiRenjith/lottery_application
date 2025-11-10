import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _locationController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainerWidget(
        title: TextConstants.createAccountTitle,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                labelText: TextConstants.fullName,
                controller: _fullNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.location,
                controller: _locationController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter location';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.phoneNumber,
                keyboardType: TextInputType.phone,
                controller: _phoneNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.password,
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.confirmPass,
                obscureText: true,
                controller: _confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: TextConstants.signUp,
                onPressed: () {
                  validation(context);
                },
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 98.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.gradientDarkGrey,
                          ColorConstants.gradientLigntgrey,
                        ],
                        end: AlignmentGeometry.topLeft,
                        begin: Alignment.topRight,
                      ),
                    ),
                  ),

                  SizedBox(width: 20.w),
                  Text(
                    TextConstants.or,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.greyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    width: 98.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.gradientDarkGrey,
                          ColorConstants.gradientLigntgrey,
                        ],
                        begin: AlignmentGeometry.topLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TextConstants.haveAccount,
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyText,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0.w, 0.h),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: Text(
                      TextConstants.login,
                      style: GoogleFonts.poppins(
                        color: ColorConstants.blueTextButton,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
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
