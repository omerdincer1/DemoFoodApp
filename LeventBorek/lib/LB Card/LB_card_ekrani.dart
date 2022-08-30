import 'package:flutter/material.dart';
import 'package:leventborek/LB%20Card/sana_ozel.dart';

import 'kart_sekmesi.dart';

class LB_card_ekrani extends StatefulWidget {
  const LB_card_ekrani({Key? key}) : super(key: key);

  @override
  State<LB_card_ekrani> createState() => _LB_card_ekraniState();
}

class _LB_card_ekraniState extends State<LB_card_ekrani> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              title: Row(
                children: [
                  Text(
                    "LB CARD",
                    style: TextStyle(color: Colors.orange),
                  ),
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
                    child: Text("LB Card"),
                  ),
                  Tab(
                    child: Text("Sana Özel"),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            kart_sekmesi(),
            sana_ozel(),
          ],
        ),
      ),
    );
  }
}
