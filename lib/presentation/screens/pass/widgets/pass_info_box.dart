import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PassInfoBox extends StatelessWidget {
  final String iconPath;
  final String data;
  final String keyWord;
  const PassInfoBox({
    Key? key,
    required this.iconPath,
    required this.data,
    required this.keyWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      height: 13.h,
      width: 35.w,
      decoration: BoxDecoration(
        border: const Border(
          top: BorderSide(color: lightBlue),
          left: BorderSide(color: lightBlue),
          right: BorderSide(color: lightBlue),
        ),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            darkBlue.withOpacity(0.5),
            darkBlue.withOpacity(0.4),
            darkBlue.withOpacity(0.3),
            darkBlue.withOpacity(0.2),
            darkBlue.withOpacity(0.1),
            darkBlue.withOpacity(0.1),
            darkBlue.withOpacity(0.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 10.sp,
            backgroundColor: lightBlue.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Image.asset(
                iconPath,
                height: 12.sp,
                width: 12.sp,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Spacer(),
          Text(
            keyWord,
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
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
