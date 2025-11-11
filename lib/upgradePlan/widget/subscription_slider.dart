
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/upgradePlan/data/data.dart';
import 'package:stacked_cards_carousel/stacked_cards_carousel.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';


class SubscriptionSlider extends StatefulWidget {
  const SubscriptionSlider({super.key});

  @override
  State<SubscriptionSlider> createState() => _SubscriptionSliderState();
}

class _SubscriptionSliderState extends State<SubscriptionSlider> {
  late StackedCardsController _carouselController;
  int _currentIndex = 0; 

  @override
  void initState() {
    super.initState();
    _carouselController = StackedCardsController();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = constraints.maxWidth * 0.80;

        return SizedBox(
          height: 450.h,
          child: StackedCardsCarouselWidget(
            controller: _carouselController,
            width: cardWidth,
            stackLevels: 2,
            items: List.generate(plans.length, (index) {
              final plan = plans[index];
              final bool isCenter = index == _currentIndex;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isCenter ?  Colors.grey:plan['color'],
                    width: 3.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: plan['color'].withOpacity(0.12),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (plan['currentPlan'] ?? false)
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                        margin: EdgeInsets.only(bottom: 6.h),
                        decoration: BoxDecoration(
                          color: plan['color'],
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Text(
                          TextConstants.currentPlan,
                          style: GoogleFonts.poppins(
                            color: ColorConstants.whiteColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    Text(
                      plan['title'],
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.blackColor,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      plan['description'],
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: ColorConstants.greyColorText,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: plan['price'],
                            style: GoogleFonts.poppins(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: ' / month',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: ColorConstants.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: plan['features'].map<Widget>((feature) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.check_circle,
                                      color: plan['color'], size: 16.sp),
                                  SizedBox(width: 6.w),
                                  Expanded(
                                    child: Text(
                                      feature,
                                      style: GoogleFonts.poppins(
                                        color: ColorConstants.blackColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.infinity,
                      height: 40.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: plan['color'],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          (plan['currentPlan'] ?? false) ? 'Active' : 'Upgrade Now',
                          style: GoogleFonts.poppins(
                            color: ColorConstants.whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            onItemChanged: (index) {
              setState(() {
                _currentIndex = index; 
              });
            },
          ),
        );
      },
    );
  }
}
