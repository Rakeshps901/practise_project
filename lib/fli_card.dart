import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flipcard'),
      ),
      body: FlipCard(
        fill: Fill
            .fillBack, // Fill the back side of the card to make in the same size as the front.
        direction: FlipDirection.HORIZONTAL, // default
        front: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Center(
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
        ),
        back: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Stack(
              children: [
              Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/back.png")                  )),
            ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}