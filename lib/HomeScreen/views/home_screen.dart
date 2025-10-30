// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottery_project/HomeScreen/widgets/all_lotteries.dart';
// import 'package:lottery_project/HomeScreen/widgets/plan_widget.dart';
// import 'package:lottery_project/HomeScreen/widgets/winner_details_widget.dart';
// import 'package:lottery_project/common_widgets/home_gradient_container.dart';
// import 'package:lottery_project/constants/color_constants.dart';
// import 'package:lottery_project/constants/text_constants.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> imageList = [
//     'images/bannerone.png',
//     'images/bannertwo.png',
//     'images/bannerthree.png',
//      'images/bannertwo.png',
//     'images/bannerthree.png',
//   ];

//   int currentIndex = 0;
//   final PageController _pageController = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return HomeGradientContainer(
//       userName: TextConstants.userName,
     
//       plan: PlanWidgetHandler.getPlanWidget('free') ,

//       child: Column(
//         children: [
      
//           SizedBox(
//             height: 110.h,
//             width: 240.w,
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: imageList.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return
//                    ClipRRect(
                 
//                     child: Image.asset(
//                       imageList[index],
//                       fit: BoxFit.cover,
                     
//                     ),
//                   );
                
//               },
//             ),
//           ),

//            SizedBox(height: 10),

//            Padding(
//              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
//              child:   Row(
              
//               children: [
                
//                 Row(
                
//                   children: [
//                   Container(
//                     width: 35.w,
//                     height: 30.h,
             
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                         ColorConstants.homeGradientLightBlue,
//                         ColorConstants.homeGradientDarkBlue
//                       ]
                      
//                       ),

//                       borderRadius: BorderRadius.circular(5),
                      
//                       image: DecorationImage(image: AssetImage('images/prize.png'),
                 
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10.w),
//                    Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(TextConstants.recentFirstPrize,style: GoogleFonts.poppins(
//                         fontWeight:FontWeight.w500,
//                         color: ColorConstants.blueColor,
//                         fontSize: 17
//                       ),),
//                       Text(TextConstants.latestLotteryWinners,style: GoogleFonts.poppins(
//                         color: ColorConstants.blackGrey,
//                         fontWeight: FontWeight.w400
//                       ),),
//                     ],
//                    )
             
//                   ],
//                 ),
//                 Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 15),
//                           child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         children: List.generate(imageList.length, (index) {
//                                           bool isActive = index == currentIndex;
//                                           return AnimatedContainer(
//                                             duration:  Duration(milliseconds: 300),
//                                             margin:  EdgeInsets.symmetric(horizontal: 1),
//                                             width: isActive ? 14 : 5,
//                                             height: isActive ? 5 : 5,
//                                             decoration: BoxDecoration(
//                                               color: isActive ?  ColorConstants.greenClr:ColorConstants.lightGrey ,
//                                               borderRadius: isActive ? BorderRadius.circular(10) : BorderRadius.circular(50)
                                            
//                                             ),
//                                           );
//                                         }),
//                                                  ),
//                         ),
//               ],
//              ),
//            ),
           
//            WinnerDetailsWidget(),
//            AllLotteries()
         
         

  
//         ],
//       ),
//     );
//   }

  
// }



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/HomeScreen/widgets/all_lotteries.dart';
import 'package:lottery_project/HomeScreen/widgets/plan_widget.dart';
import 'package:lottery_project/HomeScreen/widgets/winner_details_widget.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'images/bannerone.png',
    'images/bannertwo.png',
    'images/bannerthree.png',
    'images/bannertwo.png',
    'images/bannerthree.png',
  ];

  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return HomeGradientContainer(
      userName: TextConstants.userName,
      plan: PlanWidgetHandler.getPlanWidget('free'),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          child: Column(
            children: [
            SizedBox(
            height: 110.h,
            width: 240.w,
            child: PageView.builder(
              controller: _pageController,
              itemCount: imageList.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return
                   ClipRRect(
                 
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                     
                    ),
                  );
                
              },
            ),
          ),


              SizedBox(height: 10.h),

              // Title Row with Indicator
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          colors: [
                            ColorConstants.homeGradientLightBlue,
                            ColorConstants.homeGradientDarkBlue,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Image.asset(
                          'images/prize.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TextConstants.recentFirstPrize,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.blueColor,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          TextConstants.latestLotteryWinners,
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.blackGrey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Dots Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(imageList.length, (index) {
                        bool isActive = index == currentIndex;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          width: isActive ? 12 : 6,
                          height: 6.h,
                          decoration: BoxDecoration(
                            color: isActive
                                ? ColorConstants.greenClr
                                : ColorConstants.lightGrey,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.h),

              // Winner Section
              WinnerDetailsWidget(),
              SizedBox(height: 20.h),

              // Lottery Grid
              AllLotteries(),
            ],
          ),
        ),
      ),
    );
  }
}
