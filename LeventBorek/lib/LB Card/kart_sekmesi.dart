import 'package:flutter/material.dart';
import 'package:leventborek/Widgets/LBCard_bottomsheet.dart';

import '../Widgets/QR_BUTTON.dart';
import '../AnaSayfa/AnaSayfa.dart';

class kart_sekmesi extends StatefulWidget {
  const kart_sekmesi({Key? key}) : super(key: key);

  @override
  State<kart_sekmesi> createState() => _kart_ekraniState();
}

class _kart_ekraniState extends State<kart_sekmesi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: QRBUTTON(),
      body: Stack(
        children:[Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Row(
                children: [
                  Text("Hesap Bakiyesi"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "500 TL",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: Image.asset(
                "assets/images/card.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
