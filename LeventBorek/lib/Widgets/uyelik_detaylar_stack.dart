import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class uyelik_detaylar_stack extends StatefulWidget {
  const uyelik_detaylar_stack({Key? key}) : super(key: key);

  @override
  State<uyelik_detaylar_stack> createState() => _uyelik_detaylar_stackState();
}

class _uyelik_detaylar_stackState extends State<uyelik_detaylar_stack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          color: Colors.black87,
        ),
        Positioned(
          top: 30,
          left: 45,
          child: Row(
            children: [
              SizedBox(
                height: 50,
                child: Text(
                  "Yıldızlar",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            child: SizedBox(
              height: 150,
              width: 150,
              child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_dvkqiyji.json', repeat: false,),
            )
          /* Row(
                            children: [
                              TweenAnimationBuilder(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: Duration(days: 4),
                                  builder: (context, double value, _) =>
                                      SizedBox(
                                        width: 100,
                                        height: 120,
                                        child:

                                       CircularPercentIndicator(
                                          animation: true,
                                          animationDuration: 1000,
                                          radius: 60,
                                          lineWidth: 10,
                                          percent: 0.8,
                                          progressColor:
                                              Colors.pinkAccent.shade700,
                                          backgroundColor: Colors.pinkAccent,
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                        ),
                                      )),
                            ],
                          ), */
        ),
        Positioned(
          left: 195,
          top: 70,
          child: Row(
            children: [
              FittedBox(
                child: Text(
                  "14",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 212, 175, 55)),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  "3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Icon(
                Icons.local_drink,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 275,
          child: Row(
            children: [
              SizedBox(
                  width: 70,
                  child: Text(
                    maxLines: 1,
                    "ikram İçecek",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        Positioned(
          top: 100,
          left: 185,
          child: Row(
            children: [
              SizedBox(
                  width: 70,
                  child: Text(
                    maxLines: 1,
                    "Yıldız Bakiyesi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        Positioned(
          top: 125,
          left: 192,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side:
                  BorderSide(width: 1, color: Colors.grey),
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {

              },
              child: Text("Üyelik Detayları")),
        ),
      ],
    );
  }
}
