// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottery_project/HomeScreen/provider/plan_controller.dart';
// import 'package:lottery_project/HomeScreen/widgets/all_lotteries.dart';
// import 'package:lottery_project/HomeScreen/widgets/plan_widget.dart';
// import 'package:lottery_project/HomeScreen/widgets/winner_details_widget.dart';
// import 'package:lottery_project/common_widgets/home_gradient_container.dart';
// import 'package:lottery_project/constants/color_constants.dart';
// import 'package:lottery_project/constants/text_constants.dart';
// import 'package:provider/provider.dart';
// import 'package:carousel_slider/carousel_slider.dart';


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> imageList = [
//     'images/bannerone.png',
//     'images/bannerone.png',
//     'images/bannerone.png',
//     'images/bannerone.png',
//     'images/bannerone.png',
//   ];

//   int currentIndex = 0;


//   @override
//   Widget build(BuildContext context) {
//       final planController = Provider.of<PlanController>(context);
//         String planToShow;

//     if (planController.isFree) {
//       planToShow = TextConstants.free;
//     } else if (planController.activePlan == null) {
//       planToShow = TextConstants.upgrade;
//     } else {
//       planToShow = planController.activePlan!;
//     }
      
//     final planWidget = PlanWidgetHandler.getPlanWidget(planToShow);

//     return HomeGradientContainer(
//       userName: TextConstants.userName,
//       plan: planWidget,
//       child: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
//           child: Column(
//             children: [
//               SizedBox(
//                   height: 110.h,
//                 width: 350.w,
//                 child:CarouselSlider(
//   items: imageList.map((imagePath) {
//     return ClipRRect(
  
//       child: Image.asset(
//         imagePath,
//         fit: BoxFit.cover,
//         width: double.infinity,
//       ),
//     );
//   }).toList(),
//   options: CarouselOptions(
//     height: 110.h,
//     autoPlay: true,
//     enlargeCenterPage: true,
//     viewportFraction: 1,
//     autoPlayInterval: const Duration(seconds: 3),
//     onPageChanged: (index, reason) {
//       setState(() {
//         currentIndex = index;
//       });
//     },
//   ),
// ),


//               ),

//               // SizedBox(
//               //   height: 110.h,
//               //   width: 240.w,
//               //   child: PageView.builder(
//               //     controller: _pageController,
//               //     itemCount: imageList.length,
//               //     onPageChanged: (index) {
//               //       setState(() {
//               //         currentIndex = index;
//               //       });
//               //     },
//               //     itemBuilder: (context, index) {
//               //       return ClipRRect(
//               //         child: Image.asset(imageList[index], fit: BoxFit.cover),
//               //       );
//               //     },
//               //   ),
//               // ),

//               SizedBox(height: 10.h),
//               Padding(
//                 padding: EdgeInsets.only(top: 5.h),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 45.w,
//                       height: 40.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8.r),
//                         gradient: LinearGradient(
//                           colors: [
//                             ColorConstants.homeGradientLightBlue,
//                             ColorConstants.homeGradientDarkBlue,
//                           ],
//                         ),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(5.w),
//                         child: Image.asset(
//                           'images/prize.png',
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           TextConstants.recentFirstPrize,
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w600,
//                             color: ColorConstants.blueColor,
//                             fontSize: 16.sp,
//                           ),
//                         ),
//                         Text(
//                           TextConstants.latestLotteryWinners,
//                           style: GoogleFonts.poppins(
//                             fontSize: 13.sp,
//                             fontWeight: FontWeight.w400,
//                             color: ColorConstants.blackGrey,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
                   
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: List.generate(imageList.length, (index) {
//                         bool isActive = index == currentIndex;
//                         return AnimatedContainer(
//                           duration: const Duration(milliseconds: 300),
//                           margin: EdgeInsets.symmetric(horizontal: 2),
//                           width: isActive ? 12 : 6,
//                           height: 6.h,
//                           decoration: BoxDecoration(
//                             color: isActive
//                                 ? ColorConstants.greenClr
//                                 : ColorConstants.lightGrey,
//                             borderRadius: BorderRadius.circular(5.r),
//                           ),
//                         );
//                       }),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 15.h),

              
//               WinnerDetailsWidget(),
//               SizedBox(height: 20.h),
//               AllLotteries(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/HomeScreen/provider/plan_controller.dart';
import 'package:lottery_project/HomeScreen/widgets/all_lotteries.dart';
import 'package:lottery_project/HomeScreen/widgets/plan_widget.dart';
import 'package:lottery_project/HomeScreen/widgets/winner_details_widget.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'images/bannerone.png',
    'images/bannerone.png',
    'images/bannerone.png',
    'images/bannerone.png',
    'images/bannerone.png',
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
      final planController = Provider.of<PlanController>(context);
        String planToShow;

    if (planController.isFree) {
      planToShow = TextConstants.free;
    } else if (planController.activePlan == null) {
      planToShow = TextConstants.upgrade;
    } else {
      planToShow = planController.activePlan!;
    }
      
    final planWidget = PlanWidgetHandler.getPlanWidget(planToShow);

    return HomeGradientContainer(
      topContent: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, left: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TextConstants.homeTitle,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                          Text(
                            'John Doe',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22.sp,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, right: 20.w),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 35.w,
                            height: 35.w,
                            decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.notifications_none,
                              size: 22.sp,
                              color: ColorConstants.blackColor,
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18.w, top: 5.h),
                              child: Container(
                                height: 8.w,
                                width: 8.w,
                                decoration: BoxDecoration(
                                  color: ColorConstants.notification,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                   
                  ),
                  child: planWidget,
                ),
                SizedBox(height: 15),
              ],
            ),
      
  
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: Column(
            children: [
              SizedBox(
                  height: 110.h,
                width: 350.w,
                child:CarouselSlider(
  items: imageList.map((imagePath) {
    return ClipRRect(
  
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }).toList(),
  options: CarouselOptions(
    height: 110.h,
    autoPlay: true,
    enlargeCenterPage: true,
    viewportFraction: 1,
    autoPlayInterval: const Duration(seconds: 3),
    onPageChanged: (index, reason) {
      setState(() {
        currentIndex = index;
      });
    },
  ),
),


              ),

      

              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Row(
                  children: [
                    Container(
                      width: 45.w,
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

              
              WinnerDetailsWidget(),
              SizedBox(height: 20.h),
              AllLotteries(),
            ],
          ),
        ),
      ),
    );
  }
}



