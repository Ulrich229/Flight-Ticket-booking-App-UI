import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/world.png"),
            fit: BoxFit.cover,
          ),
          color: lightBlue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let’s book your",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "flight",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Image.asset(
                      "assets/icons/ongoing_flight.png",
                      height: 15.sp,
                      width: 15.sp,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              elevation: 20,
              child: CircleAvatar(
                radius: 20.sp,
                backgroundImage: const AssetImage("assets/images/pp.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
