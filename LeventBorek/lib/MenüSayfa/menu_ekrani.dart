import 'package:flutter/material.dart';
import 'package:leventborek/Men%C3%BCSayfa/favori_lezzetler.dart';
import 'package:leventborek/Men%C3%BCSayfa/one_cikanlar.dart';

import 'package:leventborek/Menü_ürünler_sayfa/restaurant_page.dart';
import '';

class menu_ekrani extends StatefulWidget {
  const menu_ekrani({Key? key}) : super(key: key);

  @override
  State<menu_ekrani> createState() => _menu_ekraniState();
}

class _menu_ekraniState extends State<menu_ekrani> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              title: Row(
                children: [
                  Text(
                    TabbarTexts._menu,
                    style: TextStyle(color: Colors.orange),
                  ),
                  Icon(Icons.search, color: Colors.orange),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              backgroundColor: Colors.white,
              bottom: TabBar(
                unselectedLabelColor: Colors.grey.shade500,
                labelColor: Colors.black,
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(
                    child: Text(TabbarTexts._menu),
                  ),
                  Tab(
                    child: Text(TabbarTexts._onecikanlar),
                  ),
                  Tab(
                    child: Text(TabbarTexts._favorilezzet),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            RestaurantPage(),
            favori_lezzetler(),
            one_cikanlar(),
          ],
        ),
      ),
    );
  }
}

class TabbarTexts {
  static const _menu = 'Menü';
  static const _onecikanlar = 'Öne Çıkanlar';
  static const _favorilezzet = 'Favori Lezzetler';
}
