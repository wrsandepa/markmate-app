import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

//custom card
// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  Widget customcard(
      Color color, double width, double height, double elevation) {
    return Card(
      color: color,
      elevation: elevation,
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB0BEC5),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: screenWidth,
                height: screenHeight,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customcard(const Color(0xFFB0BEC5), screenWidth * 0.9,
                            screenHeight * 0.25, 3),
                        customcard(const Color(0xFFB0BEC5), screenWidth * 0.9,
                            screenHeight * 0.2, 3),
                        customcard(const Color(0xFFB0BEC5), screenWidth * 0.9,
                            screenHeight * 0.15, 3),
                        customcard(const Color(0xFFFFFFFF), screenWidth * 0.9,
                            screenHeight * 0.15, 5),
                        customcard(const Color(0xFFB0BEC5), screenWidth * 0.8,
                            screenHeight * 0.15, 3),
                      ],
                    ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
