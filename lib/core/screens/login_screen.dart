import 'package:dalil_project/core/screens/signup_view.dart';
import 'package:dalil_project/resources/assets_manager.dart';
import 'package:dalil_project/resources/colors_manager.dart';
import 'package:dalil_project/resources/fonts_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  bool isValidEmail(String value) {
    String pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(23.5.h),
        child: AppBar(
          backgroundColor: Color(0xFFFDC47E),
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(ImageAssets.appBarImage, fit: BoxFit.cover),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Row(
                        children: [
                          Text(
                            'Dalil',
                            style: TextStyle(
                              fontSize: 40.sp,
                              fontWeight: FontWeightManager.regular,
                              color: ColorManager.white,
                              fontFamily: 'MaShanZheng',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Text(
                              'دليل',
                              style: TextStyle(
                                fontSize: 34.5.sp,
                                color: ColorManager.white,
                                fontFamily: FontConstants.arabicFontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: Text(
                  "Welcome!",
                  style: GoogleFonts.faustina(
                    fontSize: 27.sp,
                    fontWeight: FontWeightManager.medium,
                    letterSpacing: 0.54.sp,
                  ),
                ),
              ),
              Text(
                "Sign into Your Account",
                style: GoogleFonts.faustina(
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.32.sp,
                  color: ColorManager.mediumGray,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.8,
                  indent: 4.w,
                  endIndent: 4.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.h, left: 3.62.w, right: 3.62.w),
                child: TextFormField(
                  key: _formKey,
                  style: GoogleFonts.faustina(
                    fontSize: 18.sp,
                    color: ColorManager.mediumGray,
                  ),
                  autocorrect: true,
                  autofocus: false,
                  controller: _emailController,
                  cursorHeight: 25,
                  cursorColor: ColorManager.mediumGray,
                  focusNode: _emailFocusNode,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.mediumGray),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.red),
                    ),
                    labelText: 'Email*',
                    labelStyle: GoogleFonts.faustina(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.semiBold,
                      letterSpacing: 0.32.sp,
                      color: ColorManager.mediumGray,
                    ),
                    suffixIcon: Icon(Icons.email_outlined),
                    suffixIconColor: ColorManager.mediumGray,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email cannot be empty";
                    } else if (!isValidEmail(value)) {
                      return "Enter a valid email address";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  textInputAction: TextInputAction.next,
                ),
              ),
              // Password Field
              Padding(
                padding: EdgeInsets.only(top: 3.h, left: 3.62.w, right: 3.62.w),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  enableSuggestions: true,
                  style: GoogleFonts.faustina(
                    fontSize: 18.sp,
                    color: ColorManager.mediumGray,
                  ),
                  autocorrect: false,
                  obscureText: !_isPasswordVisible,
                  controller: _passwordController,
                  cursorHeight: 25,
                  cursorColor: ColorManager.mediumGray,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.mediumGray),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.red),
                    ),
                    labelText: 'Password*',
                    labelStyle: GoogleFonts.faustina(
                      fontSize: 16.sp,
                      fontWeight: FontWeightManager.semiBold,
                      letterSpacing: 0.32.sp,
                      color: ColorManager.mediumGray,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                    suffixIconColor: ColorManager.mediumGray,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  textInputAction: TextInputAction.done,

                ),
              ),
              Padding(
                padding: EdgeInsets.only( left: 65.w),
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.faustina(
                    fontSize: 16.sp,
                    fontWeight: FontWeightManager.semiBold,
                    letterSpacing: 0.28.sp,
                    color: ColorManager.primaryColor,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: SizedBox(
                  height: 6.h,
                  width: 60.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: () {
                      FocusManager.instance.primaryFocus!.unfocus();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => const GenderScreen(),
                      // ));
                    },
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.faustina(
                        color: ColorManager.white,
                        fontSize: 20.sp,
                        letterSpacing: 7.sp,
                        fontWeight: FontWeightManager.semiBold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: RichText(
                  text: TextSpan(
                      text: "Don’t have an account? ",
                      style: TextStyle(
                        color: ColorManager.mediumGray,
                        fontFamily: "Faustina",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.28.sp,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Signup",
                          style: TextStyle(
                            color: ColorManager.primaryColor,
                            fontFamily: "Faustina",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.28.sp,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignupView(),
                              ));
                            },
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
