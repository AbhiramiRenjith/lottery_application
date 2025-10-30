// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottery_project/constants/color_constants.dart';
// import 'package:lottery_project/constants/text_constants.dart';

// class WinnerDetailsWidget extends StatelessWidget {
//   const WinnerDetailsWidget({super.key});

//   final Map<String, dynamic> winnerDetails = const {
//     'name': 'Anithya Suresh',
//     'ticketName': 'Bhagyathara',
//     'ticketNumber': 'NG-789012',
//     'location': 'Kollam, Kerala',
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
//       child: Container(
//         height: 210.w,

//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: ColorConstants.lightBlue20,
//           border: Border.all(
//             color: (ColorConstants.homeGradientLightBlue),
//             width: 1.5,
//           ),
//         ),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 15.w, top: 10.h),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 45.w,
//                     height: 35.h,

//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           ColorConstants.homeGradientLightBlue,
//                           ColorConstants.homeGradientDarkBlue,
//                         ],
//                       ),

//                       borderRadius: BorderRadius.circular(5),

//                       image: DecorationImage(
//                         image: AssetImage('images/prize.png'),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),

//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         winnerDetails['name'],
//                         style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.w500,
//                           color: ColorConstants.blackColor,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Text(
//                         winnerDetails['ticketName'],
//                         style: GoogleFonts.poppins(
//                           color: ColorConstants.redColor,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 5.h, left: 70.w, right: 13.w),
//               child: Container(
//                 height: 100.h,
//                 decoration: BoxDecoration(
//                   color: ColorConstants.whiteColor,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: ColorConstants.grey, width: 2),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: 5.h, left: 10.w),
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 45,
//                             height: 30,
//                             decoration: BoxDecoration(
//                               color: ColorConstants.lightGreen20,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Icon(
//                               Icons.confirmation_num_outlined,
//                               color: ColorConstants.greenClr,
//                               size: 22,
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 TextConstants.ticketNumber,
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),

//                               Text(
//                                 winnerDetails['ticketNumber'],
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           TextConstants.prediction,
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         SizedBox(width: 5),
//                         Image.asset(
//                           'images/verified.png',
//                           width: 15.w,
//                           height: 15.h,
//                         ),
//                         SizedBox(width: 10),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 10.w),
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 45,
//                             height: 30,
//                             decoration: BoxDecoration(
//                               color: ColorConstants.lightBlue30,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Icon(
//                               Icons.location_on_outlined,
//                               color: ColorConstants.blueColor,
//                               size: 22,
//                             ),
//                           ),
//                           SizedBox(width: 10),

//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 TextConstants.location,
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),

//                               Text(
//                                 winnerDetails['location'],
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             Padding(
//               padding: EdgeInsets.only(top: 10.h, left: 70.w, right: 13.w),
//               child: Container(
//                 height: 2,
//                 decoration: BoxDecoration(color: ColorConstants.dividerBlue),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 70.w, top: 5.h),
//               child: Row(
//                 children: [
//                   Text(
//                     TextConstants.winDate,
//                     style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12),
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 5.r,
//                         backgroundColor: ColorConstants.greenClr,
//                       ),
//                       SizedBox(width: 5.w),

//                       Text(
//                         TextConstants.verified,
//                         style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12),
//                       ),
//                       SizedBox(width: 10.w),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class WinnerDetailsWidget extends StatelessWidget {
  const WinnerDetailsWidget({super.key});

  final Map<String, dynamic> winnerDetails = const {
    'name': 'Anithya Suresh',
    'ticketName': 'Bhagyathara',
    'ticketNumber': 'NG-789012',
    'location': 'Kollam, Kerala',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: ColorConstants.lightBlue20,
          border: Border.all(
            color: ColorConstants.homeGradientLightBlue,
            width: 1.5.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Top Section — Winner Name & Lottery
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Container(
                    width: 42.w,
                    height: 42.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.homeGradientLightBlue,
                          ColorConstants.homeGradientDarkBlue,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.w),
                      child: Image.asset('images/prize.png'),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        winnerDetails['name'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: ColorConstants.blackColor,
                        ),
                      ),
                      Text(
                        winnerDetails['ticketName'],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorConstants.redColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            /// 🔹 Ticket & Location Info Card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: ColorConstants.grey,
                    width: 1.2.w,
                  ),
                ),


                child: Column(
                  children: [
                  
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 38.w,
                          height: 32,
                          decoration: BoxDecoration(
                            color: ColorConstants.lightGreen20,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Icon(
                            Icons.confirmation_num_outlined,
                            color: ColorConstants.greenClr,
                            size: 22.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextConstants.ticketNumber,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              winnerDetails['ticketNumber'],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        
                      ],
                    ),

                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              TextConstants.prediction,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Image.asset(
                              'images/verified.png',
                              width: 16.w,
                              height: 16.h,
                              
                            ),
                          ],
                        ),

                   
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 38.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color: ColorConstants.lightBlue30,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: ColorConstants.blueColor,
                            size: 22.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextConstants.location,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              winnerDetails['location'],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: Container(
                height: 1.5.h,
                color: ColorConstants.dividerBlue,
              ),
            ),

          
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
              child: Row(
                children: [
                  Text(
                    TextConstants.winDate,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5.r,
                        backgroundColor: ColorConstants.greenClr,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        TextConstants.verified,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
