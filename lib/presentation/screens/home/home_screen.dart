import 'package:flight/presentation/screens/home/widgets/date_box.dart';
import 'package:flight/presentation/screens/home/widgets/fly_infos.dart';
import 'package:flight/presentation/screens/home/widgets/place_box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:flight/presentation/screens/home/widgets/home_header.dart';
import 'package:flight/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const HomeHeader(),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Upcoming Flight",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "See all >",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: lightBlue,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Card(
                                margin: EdgeInsets.zero,
                                surfaceTintColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.w),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlyInfos(
                                        iconPath: 'assets/icons/calendar.png',
                                        data: "July 20, 2022",
                                      ),
                                      FlyInfos(
                                        iconPath: 'assets/icons/clock.png',
                                        data: "1h 30 min",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              /* 
                              DottedSeparator(color: Colors.grey), */
                              Card(
                                margin: EdgeInsets.zero,
                                surfaceTintColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "08.30 am",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          Text(
                                            "10.00 am",
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
                                                      surfaceTintColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.w),
                                                        child: Image.asset(
                                                          "assets/icons/flight.png",
                                                          height: 5.w,
                                                          width: 5.w,
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: 14.h),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 10,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            const Column(
                              children: [
                                PlaceBox(
                                  keyWord: "From",
                                  location: "Palembang",
                                ),
                                PlaceBox(
                                  keyWord: "To",
                                  location: "Bandung",
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 6.h,
                                  width: 6.h,
                                  margin: EdgeInsets.only(right: 10.w),
                                  padding: EdgeInsets.all(2.w),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child:
                                      Image.asset("assets/icons/permute.png"),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            const DateBox(
                              keyWord: "Departure",
                              date: "Jan, 03 2022 ",
                            ),
                            SizedBox(width: 4.w),
                            const DateBox(
                              keyWord: "Departure",
                              date: "Jan, 03 2022 ",
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/home");
                          },
                          color: lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                              vertical: 1.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Search',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
