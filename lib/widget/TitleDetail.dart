
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;  
  const TitleDetail({
    Key? key,
    required this.title,
    required this.detail

  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10,),
          Text(detail),
        ],
    
      ),
      
       
    );
  }
}