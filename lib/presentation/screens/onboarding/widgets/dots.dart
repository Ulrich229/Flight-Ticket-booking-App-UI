import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FocusedDot extends StatelessWidget {
  const FocusedDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.5.h,
      width: 5.5.h,
      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
        border: Border.all(color: darkBlue),
        shape: BoxShape.circle,
      ),
      child: Container(
        height: 1.5.h,
        width: 1.5.h,
        margin: EdgeInsets.symmetric(horizontal: 2.2.w),
        decoration: BoxDecoration(
          color: darkBlue,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 2),
              color: darkBlue.withOpacity(0.4),
              blurRadius: 5,
            ),
            BoxShadow(
              offset: const Offset(-2, 2),
              color: darkBlue.withOpacity(0.4),
              blurRadius: 5,
            ),
            BoxShadow(
              offset: const Offset(-2, -2),
              color: darkBlue.withOpacity(0.4),
              blurRadius: 5,
            ),
            BoxShadow(
              offset: const Offset(2, -2),
              color: darkBlue.withOpacity(0.4),
              blurRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.5.h,
      width: 1.5.h,
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: const BoxDecoration(
        color: black,
        shape: BoxShape.circle,
      ),
    );
  }
}
