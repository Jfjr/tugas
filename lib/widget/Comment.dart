import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network("https://i0.wp.com/studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg?ssl=1",
            width: 40,),
            SizedBox(
              width: 10,
            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pragos"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber)
                  ],
                )
              ],
            )
    
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          child: Container(
            width: 350,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  

                )
              ]
            ),
            child: Text(style: GoogleFonts.montserrat(
              fontSize: 12),
            "Lorem Ipsum is simply dummy text of the printing and typesetting ",
            ),
          ),
        )
      ],
    
      ),
    );
  }
}
