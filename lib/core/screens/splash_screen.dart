import 'package:dalil_project/resources/colors_manager.dart';
import 'package:dalil_project/resources/fonts_manager.dart';
import 'package:dalil_project/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool hasAnimated = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        hasAnimated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                      "D",
                      style: TextStyle(
                        fontSize: FontSize.s60,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.primaryColor,
                        fontFamily: FontConstants.englishFontFamily,
                      ),
                    )
                    .animate(target: hasAnimated ? 1 : 0)
                    .move(
                      begin: Offset(10.w, 100.h),
                      end: Offset(15.w, 20.h),
                      curve: Curves.easeOutBack,
                      duration: 900.ms,
                    )
                    .scale(
                      delay: 2000.ms,
                      begin: Offset(100.w / 100.w, 100.h / 100.h),
                      end: Offset(50.w / 100.w, 50.h / 100.h),
                      curve: Curves.easeOut,
                      duration: 200.ms,
                      alignment: Alignment(-0.1.h, 0.05.w),
                    ),
                SizedBox(height: AppSize.hs20),
                Text(
                      "alil",
                      style: TextStyle(
                        fontSize: FontSize.s43,
                        fontWeight: FontWeightManager.regular,
                        color: ColorManager.primaryColor,
                        fontFamily: FontConstants.englishFontFamily,
                      ),
                    )
                    .animate(delay: 2000.ms)
                    .fade(duration: 200.ms, curve: Curves.easeIn)
                    .then()
                    .move(
                      begin: Offset(-4.w, 12.h),
                      end: Offset(-4.w, 12.h),
                      curve: Curves.easeOutBack,
                      duration: 400.ms,
                    ),
              ],
            ),
            Text(
                  "دليل",
                  style: TextStyle(
                    fontSize: FontSize.s37,
                    fontWeight: FontWeightManager.regular,
                    color: ColorManager.primaryColor,
                    fontFamily: FontConstants.arabicFontFamily,
                  ),
                )
                .animate(delay: 2000.ms)
                .move(
                  begin: Offset(0, 100.h),
                  curve: Curves.easeIn,
                  duration: 400.ms,
                ),
            Padding(
              padding: EdgeInsets.only(top: AppPadding.p120),
              child: SizedBox(
                    height: AppSize.hs8,
                    width: AppSize.ws90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SignupScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.faustina(
                          color: ColorManager.white,
                          fontSize: FontSize.s21,
                          letterSpacing: 1.w,
                          fontWeight: FontWeightManager.semiBold,
                        ),
                      ),
                    ),
                  )
                  .animate(delay: 2000.ms)
                  .fade(duration: 200.ms, curve: Curves.easeIn)
                  .then()
                  .move(
                    begin: Offset(0.w, 2.h),
                    end: Offset(0.w, 2.h),
                    curve: Curves.easeOutBack,
                    duration: 400.ms,
                  ),
            ),

            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 40.w,
                  height: 5.h,
                  child: Text(
                        "Log In With Account",
                        style: GoogleFonts.faustina(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s16,
                          letterSpacing: 3.sp,
                          fontWeight: FontWeightManager.semiBold,
                        ),
                      )
                      .animate(delay: 2000.ms)
                      .fade(duration: 200.ms, curve: Curves.easeIn)
                      .then()
                      .move(
                        begin: Offset(0.w, 1.h),
                        end: Offset(0.w, 2.h),
                        curve: Curves.easeOutBack,
                        duration: 400.ms,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
