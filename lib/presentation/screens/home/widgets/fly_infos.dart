import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FlyInfos extends StatelessWidget {
  final String iconPath;
  final String data;
  const FlyInfos({
    super.key,
    required this.iconPath,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: lightBlue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            height: 12.sp,
            width: 12.sp,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 2.w),
          Text(
            data,
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
