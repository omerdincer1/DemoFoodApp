import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class Kampanya1_Container extends StatelessWidget {
  const Kampanya1_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
        width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/kampanya1.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 160,
          left: 52,
          child: OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange)),
              onPressed: () {},
              child: Text(
                'Detaylar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  letterSpacing: 2,
                ),
              )),
        ),
      ],
    );
  }
}
