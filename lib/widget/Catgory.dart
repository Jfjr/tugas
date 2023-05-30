import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class kantinsmk extends StatelessWidget {
  final String imagePath;
  final String title;

  const kantinsmk({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate the width and height of the container based on screen size
    final containerWidth = screenWidth * 0.15;
    final containerHeight = containerWidth * 1.2;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: containerWidth,
          height: containerHeight,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: containerWidth * 0.6,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: containerWidth * 0.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




