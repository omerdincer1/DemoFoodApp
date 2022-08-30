import 'package:flutter/material.dart';

import '../AnaSayfa/gelenkutusu.dart';
import 'QR_BUTTON.dart';

class Kampanyalar extends StatelessWidget {
  const Kampanyalar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.orange,
      child: Row(children: [
        Text(
          'KAMPANYALAR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ]),
    );
  }
}

class icerikler extends StatelessWidget {
  const icerikler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.orange,
      child: Row(children: [
        Text(
          'İÇERİKLER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ]),
    );
  }
}

class karsilamaMesajContainer extends StatelessWidget {
  const karsilamaMesajContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text("İyi Günler Ömer",
          style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
              wordSpacing: 1,
              letterSpacing: 1)),
    );
  }
}

TextStyle RowTextStyle() {
  return TextStyle(fontWeight: FontWeight.bold, color: Colors.black54);
}

class Textler {
  final bosluk = "       ";
  final siparis = 'Geçmiş Siparişleriniz';
  final gelen = 'Gelen Kutusu';
  final icerik = "İÇERİKLER;";
}

class PositinedQRCode extends StatelessWidget {
  const PositinedQRCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 560,
      right: 5,
      bottom: 20,
      left: 325,
      child: QRBUTTON(),
    );
  }
}
class AnaSayfa_gelenkutusu_buton extends StatelessWidget {
  const AnaSayfa_gelenkutusu_buton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 25,
        left: 370,
        child: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => gelenkutusu()));
          },
          icon: Icon(Icons.notifications),
          color: Colors.black,
        ));
  }
}
