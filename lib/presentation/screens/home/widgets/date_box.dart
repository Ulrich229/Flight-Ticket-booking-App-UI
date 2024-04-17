import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DateBox extends StatelessWidget {
  final String keyWord;
  final String date;

  const DateBox({
    super.key,
    required this.keyWord,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
          border: Border.all(color: lightBlue),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.grey.withOpacity(0.5),
              Colors.grey.withOpacity(0.4),
              Colors.grey.withOpacity(0.3),
              Colors.grey.withOpacity(0.2),
              Colors.grey.withOpacity(0.1),
              Colors.grey.withOpacity(0.1),
              Colors.grey.withOpacity(0.1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              keyWord,
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
