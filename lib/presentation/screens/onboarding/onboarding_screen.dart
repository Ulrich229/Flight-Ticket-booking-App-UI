import 'package:flight/presentation/screens/onboarding/widgets/dots.dart';
import 'package:flight/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/onboarding_waves.png"),
            SizedBox(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Spacer(flex: 2,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dot(),
                            FocusedDot(),
                            Dot(),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 3.h),
                      height: 50.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.w),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(2, 2),
                            color: darkBlue.withOpacity(0.3),
                            blurRadius: 20,
                          ),
                          BoxShadow(
                            offset: const Offset(-2, 2),
                            color: darkBlue.withOpacity(0.3),
                            blurRadius: 20,
                          ),
                          BoxShadow(
                            offset: const Offset(-2, -2),
                            color: darkBlue.withOpacity(0.3),
                            blurRadius: 20,
                          ),
                          BoxShadow(
                            offset: const Offset(2, -2),
                            color: darkBlue.withOpacity(0.3),
                            blurRadius: 20,
                          ),
                        ],
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/clouds.jpg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        SizedBox(height: 2.h),
                        Text(
                          "Find your flight",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Now no need to worry if you want to go anywere, find \nlots of flight ticket to various destinations you woat in\njust an app!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/home");
                          },
                          color: black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                              vertical: 1.h,
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /* Positioned(
              top: 25.h,
              left: 20.w,
              child: ), */
            Column(
              children: [
                const Spacer(),
                Image.asset(
                  "assets/images/plane.png",
                  fit: BoxFit.fitWidth,
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
