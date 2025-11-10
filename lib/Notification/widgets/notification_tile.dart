import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

class NotificationTile extends StatelessWidget {
  final Map<String, dynamic> notification;
  final VoidCallback? onDismissed;

  const NotificationTile({
    super.key,
    required this.notification,
    this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Dismissible(
        key: Key(notification['title']),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20.w),
          color: ColorConstants.redColor,
          child: Icon(
            Icons.delete,
            color: ColorConstants.whiteColor,
            size: 35.sp,
          ),
        ),
        onDismissed: (direction) {
          if (onDismissed != null) onDismissed!();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45.w,
                height: 45.w,
                decoration: BoxDecoration(
                  color: notification['color'],
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  notification['initials'],
                  style: GoogleFonts.poppins(
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),

              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification['title'],
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.black,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      notification['time'],
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: ColorConstants.darkBlue600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
