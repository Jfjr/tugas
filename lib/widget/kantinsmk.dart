import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class kantinsmk extends StatelessWidget {
  final String imagePath;
  final String namakantin;
  final String rating;
  final String jambuka;
  const kantinsmk({
    Key? key,
    required this.imagePath,
    required this.namakantin,
    required this.rating,
    required this.jambuka,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(
        children: [Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
            elevation: 10,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.asset(imagePath,
                  fit: BoxFit.cover)
              )
            ],),
            ),
            Positioned(bottom: 0, left: 10, child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(namakantin,
                    style:
                    GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,
                        color: Colors.amber),
                    SizedBox(
                      width: 5,
                    ),
                        Text(rating,
                           style: GoogleFonts.montserrat(
                      fontSize: 12
                    )),
                    SizedBox(
                      width: 20,
                    ),       
                    Icon(Icons.access_time,
                    color: Colors.grey),
                      SizedBox(
                      width: 5,
                    ),
                    Text(jambuka,
                    style: GoogleFonts.montserrat(
                      fontSize: 12
                    ))                    
                      ],
                    )
                  ],
                ),
              ),
            ))
        ],
      ),
    );
  }
}