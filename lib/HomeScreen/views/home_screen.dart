import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/HomeScreen/handler/planhandler.dart';
import 'package:lottery_project/HomeScreen/provider/plan_controller.dart';
import 'package:lottery_project/HomeScreen/widgets/all_lotteries.dart';
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


  bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonSize = screenWidth * 0.10;
    bool hasNotification = true;

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
                padding: EdgeInsets.only(top: 60.h, left: 15.w),
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
                      TextConstants.userName,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.sp,
                        color: ColorConstants.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Padding(
                padding: EdgeInsets.only(top: 40.h, right: 20.w),
                child: Material(
                  color: ColorConstants.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(buttonSize / 2),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(buttonSize / 2),
                    onTap: () {},
                    child: SizedBox(
                      width: buttonSize,
                      height: buttonSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: ColorConstants.blackColor,
                            size: buttonSize * 0.5,
                          ),
                          if (hasNotification)
                            Positioned(
                              top: buttonSize * 0.20,
                              right: buttonSize * 0.30,
                              child: Container(
                                width: buttonSize * 0.20,
                                height: buttonSize * 0.20,
                                decoration: BoxDecoration(
                                  color: ColorConstants.notification,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: planWidget,
          ),
          SizedBox(height: 15.h),
        ],
      ),

      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Column(
            children: [
              SizedBox(
                height: 180.h,
                width: double.infinity,
                child: CarouselSlider(
                  items: imageList.map((imagePath) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 180.h,
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

              SizedBox(height: 15.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                  Container(
                    width: 45.w,
                    height:
                        45.w, 
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

                  Flexible(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.blackGrey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(imageList.length, (index) {
                      bool isActive = index == currentIndex;

                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        width: isActive ? 14.w : 4.w,
                        height: 4.w,

                        decoration: BoxDecoration(
                          color: isActive
                              ? ColorConstants.greenClr
                              : ColorConstants.lightGrey,
                          borderRadius: BorderRadius.circular(
                            isActive ? 8.r : 50.r,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
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
