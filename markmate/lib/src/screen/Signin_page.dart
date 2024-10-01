// ignore: file_names

import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
        child: Stack(
          children: [
            // Sign In Button
            Positioned(
              left: screenWidth * 0.26,
              top: screenHeight * 0.72,
              child: Container(
                width: screenWidth * 0.44,
                height: screenHeight * 0.05,
                decoration: ShapeDecoration(
                  color: const Color(0xFF00796B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                ),
              ),
            ),
            // Text fields for Email and Password
            Positioned(
              left: screenWidth * 0.12,
              top: screenHeight * 0.55,
              child: Container(
                width: screenWidth * 0.76,
                height: screenHeight * 0.05,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.12,
              top: screenHeight * 0.62,
              child: Container(
                width: screenWidth * 0.76,
                height: screenHeight * 0.05,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                ),
              ),
            ),
            // Sign in with Google
            Positioned(
              left: screenWidth * 0.16,
              top: screenHeight * 0.8,
              child: SizedBox(
                width: screenWidth * 0.68,
                height: screenHeight * 0.05,
                child: Row(
                  children: [
                    const FlutterLogo(size: 20),
                    SizedBox(width: screenWidth * 0.04),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Forgot password
            Positioned(
              left: screenWidth * 0.35,
              top: screenHeight * 0.78,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: const Color(0xFF4462CA),
                  fontSize: screenWidth * 0.035,
                ),
              ),
            ),
            // Title text
            Positioned(
              left: screenWidth * 0.1,
              top: screenHeight * 0.25,
              child: Text(
                'Sign In to Your Account!',
                style: TextStyle(
                  color: const Color(0xFF00796B),
                  fontSize: screenWidth * 0.08,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            // Back button
            Positioned(
              left: screenWidth * 0.05,
              top: screenHeight * 0.05,
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: screenWidth * 0.05),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
