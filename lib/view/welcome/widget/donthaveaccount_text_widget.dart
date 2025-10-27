import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DonthaveaccountTextWidget extends StatelessWidget {
  const DonthaveaccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

                   SizedBox(width: 8.w),
                    Text( ' Or  ',
                     style: GoogleFonts.poppins( color: Color(0xFF676767), 
                     fontWeight: FontWeight.w500, fontSize: 12.sp, ), ), 
                     SizedBox(width: 8.w), 
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
                  "Don't have an account?",
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
                    'Sign Up',
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
    );
  }
}