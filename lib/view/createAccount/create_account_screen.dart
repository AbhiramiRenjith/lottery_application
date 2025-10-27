import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/components/custom_button.dart';
import 'package:lottery_project/components/custom_textfield.dart';
import 'package:lottery_project/view/welcome/widget/bg_container_widget.dart';
import 'package:lottery_project/view/welcome/widget/donthaveaccount_text_widget.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: BackgroundContainerWidget(title: 'Create\nAccount',
       child: Form(child: Column(
        children: [
          CustomTextField(labelText: 'Full Name'),
          SizedBox(height: 10.h),
          CustomTextField(labelText: 'Location'),
          SizedBox(height: 10.h),
          CustomTextField(labelText: 'Phone Number',keyboardType: TextInputType.phone),
          SizedBox(height: 10.h),
          CustomTextField(labelText: 'Password',obscureText: true),
          SizedBox(height: 10.h),
          CustomTextField(labelText: 'Confirm password',obscureText: true),
          SizedBox(height: 20.h),
          CustomButton(text: 'SIGN UP', onPressed: (){}),
          SizedBox(height: 10.h),
           Row(
             mainAxisAlignment: MainAxisAlignment.center, 
             children: [
               Container(
                width: 98.w,
                  height: 1, 
              
                   decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                     Color.fromRGBO(217, 217, 217, 1),
                     Color.fromRGBO(217, 217, 217, 0),
                     
                    ],
                    end: AlignmentGeometry.topLeft,
                    begin: Alignment.topRight
                    )
                    
                   ),
                   ), 

                   SizedBox(width: 20.w),
                    Text( ' Or  ',
                     style: GoogleFonts.poppins( color: Color(0xFF676767), 
                     fontWeight: FontWeight.w500, fontSize: 12.sp, ), ), 
                     SizedBox(width: 20.w), 
                     Container( 
                      width: 98.w, 
                      height: 1,
                       decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                     Color.fromRGBO(217, 217, 217, 1),
                     Color.fromRGBO(217, 217, 217, 0),
                     
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: Alignment.topRight
                    )
                    
                   ),
                     
                      ), ], ),
            SizedBox(height: 5.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account?",
                  style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Color(0XFF817E7E)),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                     minimumSize: const Size(0, 0),
                     // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login ',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF81A6EE),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      
                    ),
                  ),
                ),
              ],
            ),


        ],
       ))),
    );
  }
}