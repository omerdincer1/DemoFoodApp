import 'package:flutter/material.dart';
import 'package:leventborek/AnaSayfa/AnaSayfa.dart';
import 'package:leventborek/Men%C3%BCSayfa/menu_ekrani.dart';
import 'package:leventborek/Subeler/subeler_ekrani.dart';

import '../Ayarlar/ayarlar_ekrani.dart';
import '../LB Card/LB_card_ekrani.dart';

class AcilisEkrani extends StatefulWidget {
  const AcilisEkrani({Key? key}) : super(key: key);

  @override
  State<AcilisEkrani> createState() => _AcilisEkraniState();
}

class _AcilisEkraniState extends State<AcilisEkrani> {
  int currentIndex = 0;
  final screens = [
    Center(child: AnaSayfa()),
    Center(child: menu_ekrani()),
    Center(child: subeler_ekrani()),
    Center(child: LB_card_ekrani()),
    Center(child: ayarlar_ekrani()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      backgroundColor: Colors.white,
      selectedFontSize: 15,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade500,
      items: [
        buildBottomNavigationBarItem(
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            "Ana Sayfa"),
        buildBottomNavigationBarItem(
            Icon(
              Icons.fastfood,
              color: Colors.orange,
            ),
            "Menü"),
        buildBottomNavigationBarItem(
            Icon(
              Icons.storefront_sharp,
              color: Colors.orange,
            ),
            "Şubelerimiz"),
        buildBottomNavigationBarItem(
            Icon(
              Icons.wallet,
              color: Colors.orange,
            ),
            "LB Card"),
        buildBottomNavigationBarItem(
            Icon(
              Icons.person_outline_rounded,
              color: Colors.orange,
            ),
            "Hesabım"),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      Icon ikon, String baslik) {
    return BottomNavigationBarItem(
      icon: ikon,
      label: baslik,
    );
  }
}
