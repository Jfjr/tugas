import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/widget/Comment.dart';
import 'package:flutter_application_1/widget/TitleDetail.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.height;
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/k1.jpg"))
                    ),
                  ),
                    Positioned(
                      top: 16,
                      left: 16,
                    child: Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                    Positioned(
                      top: 16,
                      right: 16,
                    child: Container(
                      child: Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text("Kantin 1",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    height: height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))
                    ),
                  ),
                    Positioned(
                      top: 16,
                      left: 16,
                    child: Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                    
                ],
              ),
              SizedBox(
                height: 10,
              ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.5 (30 Review)",
                        style: GoogleFonts.montserrat(
                          fontSize: 12
                        ))
                    ],
                  ),
                                Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("08.00 - 13.00 WIB",
                        style: GoogleFonts.montserrat(
                          fontSize: 12
                        ))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Ada Promo menarik untuk kamu",
                          style: GoogleFonts.montserrat(
                            fontSize: 12
                          )),
                          Text("Dapatkan diskon 10% Sekarang",
                          style: GoogleFonts.montserrat(
                            fontSize: 12)                        
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: (){}, 
                        child: Text("TUKAR"))
                    ],
                  ),
                ),
              ),
            ),
            TitleDetail(title: "-> DESKRIPSI", detail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("-> ULASAN", 
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
          Comment(),
          Comment(),
          Comment(),
          Comment()

           ]

           ),
           
           ),
      )
    );
  }
}

