// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottery_project/constants/color_constants.dart';
// import 'package:lottery_project/constants/text_constants.dart';

// class AllLotteries extends StatelessWidget {
// const  AllLotteries({super.key});

//   final List<Map<String, dynamic>> allLotteries = const [
//     {
//       'image': 'images/bhagyathara.png',
//       'ticketName': 'Bhagyathara',
//       'totalPrizes': 7,
//     },
//     {
//       'image': 'images/sthreesakthi.png',
//       'ticketName': 'Sthree Sakthi',
//       'totalPrizes': 7,
//     },
//     {
//       'image': 'images/dhanalakshmi.png',
//       'ticketName': 'Dhanalakshmi',
//       'totalPrizes': 7,
//     },
//     {
//       'image': 'images/karunya.png',
//       'ticketName': 'Karunya Plus',
//       'totalPrizes': 7,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.only(left: 20.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//                 Text(
//             TextConstants.allLotteries,
//               style:  GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//             Spacer(),
//                      Container(
//                     width:90.w ,
//                     height: 20.h,
//                     decoration: BoxDecoration(
//                       color: ColorConstants.greenClr,
//                       borderRadius: BorderRadius.circular(2)
                      
//                     ),
//                     child: Center(
//                       child: Text(TextConstants.prediction,style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w500,
//                         color: ColorConstants.whiteColor,
//                         fontSize: 16,
//                       ),),
//                     ),
              
//                   ),
//                   SizedBox(width: 20,)
          

//             ],
//           ),
         
           
//           const SizedBox(height: 10),
//           Padding(
//             padding:  EdgeInsets.only(left: 15.w,right:30.w),
//             child: GridView.builder(
//               shrinkWrap: true, 
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, 
//                 crossAxisSpacing: 25,
//                 mainAxisSpacing: 25,
//                 childAspectRatio: 1,
                
//               ),
//               itemCount: allLotteries.length,
//               itemBuilder: (context, index) {
//                 final lottery = allLotteries[index];
//                 return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: ColorConstants.lightGrey,
//                         blurRadius: 6,
//                         offset: const Offset(1, 1),
//                       ),
//                     ],
//                   ),

//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
                          
//                             gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               ColorConstants.homeGradientLightBlue,
//               ColorConstants.homeGradientDarkBlue,
//             ],
//           ),
//           borderRadius: BorderRadius.circular(5)
        
         
//                         ),
//                         child: 
//                         Padding(
//                           padding:  EdgeInsets.all(8.0),
//                           child: Image.asset(lottery['image'],fit: BoxFit.fitHeight,),
//                         )
//                         ),
                        
                      
                     
//                       const SizedBox(height: 15),
//                       Text(
//                         lottery['ticketName'],
//                         style:  GoogleFonts.poppins(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                         ),
//                       ),
//                       Text(
//                         ' ${lottery['totalPrizes']} Prizes',
//                         style:  GoogleFonts.poppins(
//                           color: ColorConstants.greyColor,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class AllLotteries extends StatelessWidget {
  const AllLotteries({super.key});

  final List<Map<String, dynamic>> allLotteries = const [
    {
      'image': 'images/bhagyathara.png',
      'ticketName': 'Bhagyathara',
      'totalPrizes': 7,
    },
    {
      'image': 'images/sthreesakthi.png',
      'ticketName': 'Sthree Sakthi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/dhanalakshmi.png',
      'ticketName': 'Dhanalakshmi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/karunya.png',
      'ticketName': 'Karunya Plus',
      'totalPrizes': 7,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Row(
            children: [
              Text(
                TextConstants.allLotteries,
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.blackColor,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: ColorConstants.greenClr,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  TextConstants.predication,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.whiteColor,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),

         
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
                
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.h,
              childAspectRatio: 0.9,
            ),
            itemCount: allLotteries.length,
            itemBuilder: (context, index) {
              final lottery = allLotteries[index];
              return Container(
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.lightGrey.withOpacity(0.5),
                      blurRadius: 6,
                      offset: const Offset(1, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// 🖼️ Lottery Image
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorConstants.homeGradientLightBlue,
                              ColorConstants.homeGradientDarkBlue,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(6.w),
                          child: Image.asset(
                            lottery['image'],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(height: 12.h),

                      /// 🎟️ Ticket Name
                      Text(
                        lottery['ticketName'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: ColorConstants.blackColor,
                        ),
                      ),

                      SizedBox(height: 4.h),

                      /// 🏆 Total Prizes
                      Text(
                        '${lottery['totalPrizes']} Prizes',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
