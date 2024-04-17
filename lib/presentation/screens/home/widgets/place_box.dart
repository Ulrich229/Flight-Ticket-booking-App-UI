import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PlaceBox extends StatelessWidget {
  final String keyWord;
  final String location;
  const PlaceBox({
    Key? key,
    required this.keyWord,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 2.w),
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 2.w,
      ),
      decoration: BoxDecoration(
          color: lightBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            keyWord,
            style: TextStyle(
              fontSize: 8.sp,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
