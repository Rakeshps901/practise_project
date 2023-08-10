import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: AtmCard(),
  ));
}

class AtmCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ATM CARD"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://m.media-amazon.com/images/I/41isBIVCotL.jpg"),
                  )),
            ),
            const Positioned(
              left: 50,
              bottom: 50,
              child: Text(
                "R A K E S H   P S",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),
              ),),
            Positioned(
              right: 50,
              bottom: 50,
              child: Text(
                "VISA",
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25
                ),
              ),),
            Positioned(
              right: 70,
              top: 50,
              child: Text(
                "FEDERAL BANK",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),),
            const Positioned(
              left: 80,
              bottom: 80,
              child: Text(
                "6 5 2 2   9 4 0 8   7 1 4 5   6 9 6 1",style: TextStyle(fontSize: 20,color: Colors.white),
              ),),
            Positioned(
              left: 70,
              top: 50,
              child: Text(
                "PLATINUM",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),),

          ],
        ),
      ),
    );
  }
}
