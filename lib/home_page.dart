import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/widget/kantinsmk.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(height: 140, width: double.infinity, color: Colors.orange),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(
                            alignment: Alignment.topLeft,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage("https://i0.wp.com/studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg?ssl=1")),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2
                              )
                            )
                          ),
                          SizedBox(
                            width: 10
                            ), 
                            Text(
                              "Hallo JF, Welcome !",
                              style: GoogleFonts.montserrat(color: Colors.white),
                              )
                        ],
                        ),
                        Container(
                          alignment: Alignment.topRight, 
                          child: 
                            Icon(Icons.notifications_active,
                            color: Colors.white,
                            size: 35,
                            
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F7),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextField(
                        cursorHeight: 15,
                        autofocus: false,
                        decoration:
                        InputDecoration(hintText: "Cari Kantin Favoritmu Sekarang.",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2
                        ),
                          borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                  ),
                ],
              )
            ],
            ),

Padding(
  padding: const EdgeInsets.all(15),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Category(imagePath: "assets/C.png", title: "Snack"),
      Category(imagePath: "assets/B.png", title: "Makanan"),
      Category(imagePath: "assets/D.png", title: "Minuman"),
      Category(imagePath: "assets/A.png", title: "Coffee")
    ],
  ),
),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Kantin Favorit ☕️",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            kantinsmk(
                  imagePath: "assets/k1.jpg",
                  namakantin: "Kantin 1",
                  rating: "4.5",
                  jambuka: "08.00 - 13.00",
                  ),
            kantinsmk(                  
              imagePath: "assets/k2.jpg",
                  namakantin: "Kantin 2",
                  rating: "4.0",
                  jambuka: "08.00 - 13.00",),
            kantinsmk(                  
              imagePath: "assets/k3.jpg",
                  namakantin: "Kantin 3",
                  rating: "4.8",
                  jambuka: "7.00 - 15.00",)
          ],
        )),
      ),
    );
  }
}










class Category extends StatelessWidget {
  final String imagePath;
  final String title;

  const Category({
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
















