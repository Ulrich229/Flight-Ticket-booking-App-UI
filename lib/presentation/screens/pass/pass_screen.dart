// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:flight/presentation/screens/pass/dotted_separator.dart';
import 'package:flight/utils/colors.dart';

class PassScreen extends StatelessWidget {
  const PassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/world.png"),
                        fit: BoxFit.cover,
                      ),
                      color: lightBlue,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 5.h),
                  ],
                ),
                Container(
                  height: 10.w,
                  width: 10.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Boarding Pass",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  height: 63.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 60.h,
                          width: 90.w,
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16.h,
                                child: Row(
                                  children: [
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      elevation: 20,
                                      child: CircleAvatar(
                                        radius: 20.sp,
                                        backgroundImage: const AssetImage(
                                            "assets/images/pp.png"),
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Andre Sushino",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Passanger",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      "assets/icons/pngwing 1.png",
                                      height: 15.w,
                                      width: 15.w,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "YIA",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12.w),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/icons/Line 2.png",
                                                  fit: BoxFit.contain,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushNamed("/pass");
                                                  },
                                                  child: Card(
                                                    elevation: 6,
                                                    surfaceTintColor: darkBlue,
                                                    color: darkBlue,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(4.w),
                                                      child: Image.asset(
                                                        "assets/icons/flight.png",
                                                        height: 5.w,
                                                        width: 5.w,
                                                        color: Colors.white,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "DPS",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Palembang",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        Text(
                                          "Bandung",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        PassInfoBox(
                                          iconPath: "assets/icons/calendar.png",
                                          data: "July 20, 2022",
                                          keyWord: "Date",
                                        ),
                                        PassInfoBox(
                                          iconPath: "assets/icons/clock.png",
                                          data: "08.30 - 10.00 am",
                                          keyWord: "Time",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16.h,
                        left: -5,
                        child: SizedBox(
                          width: 90.w,
                          child: const DottedSeparator(color: Colors.grey),
                        ),
                      ),
                      Positioned(
                        top: 15.h,
                        left: -5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: lightBlue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.h,
                        right: -5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: lightBlue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

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
