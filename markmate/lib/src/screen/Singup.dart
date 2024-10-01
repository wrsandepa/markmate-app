// ignore: file_names
import 'package:flutter/material.dart';

class Singuppage extends StatefulWidget {
  const Singuppage({super.key});

  @override
  State<Singuppage> createState() => _SinguppageState();
}

class _SinguppageState extends State<Singuppage> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
              child: Stack(
                children: [
                  Positioned(
                    left: screenWidth * 0.02,
                    top: screenHeight * 0.2,
                    child: SizedBox(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.1,
                      child: const Text(
                        'Welcome to smart Attendance!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF00796B),
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.1,
                    top: screenHeight * 0.5,
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xFF00796B)),
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.05,
                      child: const Center(
                        child: Text(
                          'Sign up as a Teacher',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.1,
                    top: screenHeight * 0.57,
                    child: SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.05,
                        child: Container(
                          decoration:
                              const BoxDecoration(color: Color(0xFF00796B)),
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.05,
                          child: const Center(
                            child: Text(
                              'Sign up as a Student',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )),
                  ),
                  Positioned(
                    left: screenWidth * 0.25,
                    top: screenHeight * 0.7,
                    child: SizedBox(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.05,
                      child: Transform(
                        transform: Matrix4.identity()..rotateZ(-0.01),
                        child: const Text(
                          'Already have an account? Sign in!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4462CA),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
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
