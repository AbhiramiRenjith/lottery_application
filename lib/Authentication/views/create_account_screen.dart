import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/Authentication/widgets/custom_textfield.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/appfontsize_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainerWidget(
        title: TextConstants.createAccountTitle,
        child: Form(
          child: Column(
            children: [
              CustomTextField(labelText: TextConstants.fullName),
              SizedBox(height: 10.h),
              CustomTextField(labelText: TextConstants.location),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.phoneNumber,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.password,
                obscureText: true,
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                labelText: TextConstants.confirmPass,
                obscureText: true,
              ),
              SizedBox(height: 20.h),
              CustomButton(text: TextConstants.signUp, onPressed: () {}),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 98.w,
                    height: 1,
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
                      fontSize: AppFontSizeContants.smallText,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    width: 98.w,
                    height: 1,
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
                      fontSize: AppFontSizeContants.smallText,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Text(
                      TextConstants.login,
                      style: GoogleFonts.poppins(
                        color: ColorConstants.textbuttonColor,
                        fontWeight: FontWeight.w600,
                        fontSize: AppFontSizeContants.smallText,
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
}
