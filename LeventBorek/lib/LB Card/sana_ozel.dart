import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class sana_ozel extends StatefulWidget {
  const sana_ozel({Key? key}) : super(key: key);

  @override
  State<sana_ozel> createState() => _sana_ozelState();
}

class _sana_ozelState extends State<sana_ozel> {
  String hediye = "assets/images/hediye_börek.jpg";
  String baslik = 'LB Card Fırsatları!';
  String metin = "Her 10 börek alışverişine 1 Peynirli hediye!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                buildContainer(),
                Positioned(
                    top: 20,
                    child: Container(
                        height: 160, width: 120, child: Image.asset(hediye))),
                Positioned(
                  top: 20,
                  left: 125,
                  child: Row(
                    children: [
                      Text(
                        baslik,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 125,
                  child: Row(
                    children: [
                      Text(
                        metin,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 100,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        buildLinearPercentIndicator(context),
                        Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.deepOrange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
    );
  }

  LinearPercentIndicator buildLinearPercentIndicator(BuildContext context) {
    return new LinearPercentIndicator(
      width: MediaQuery.of(context).size.width / 2,
      animation: true,
      barRadius: Radius.circular(20),
      lineHeight: 30.0,
      animationDuration: 2500,
      percent: 0.8,
      center: Text("80.0%"),
      progressColor: Colors.grey,
    );
  }
}
