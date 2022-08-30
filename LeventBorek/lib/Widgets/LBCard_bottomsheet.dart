import 'package:flutter/material.dart';

class LBCard_bottomSheet extends StatelessWidget {
  const LBCard_bottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Ödeme",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
          Divider(
            indent: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Stack(
            children: [
              Container(
                color: Colors.white70,
                height: 175,
              ),
              Positioned(
                top: 12.5,
                child: Image.asset(
                  "assets/images/card.png",
                  height: 150,
                ),
              ),
              Positioned(
                  top: 50,
                  right: 110,
                  child: Text(
                    "Bakiye",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Positioned(
                  top: 80,
                  right: 82,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: Text("Para Yükle",
                        style: TextStyle(color: Colors.orange)),
                  ))
            ],
          ),
          Divider(
            indent: 1,
            thickness: 1,
            color: Colors.black,
          ),
          Stack(
            children: [
              Container(
                color: Colors.white70,
                height: 320,
              ),
              Positioned(
                  top: 60,
                  left: 162.2,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: Text(
                      "Kod Üret",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
              Positioned(
                  top: 120,
                  left: 130.7,
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      "assets/images/QR.jpg",
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
          Center(
            child: Row(
              children: [
                Text(
                    "                   Bakiyeniz Bankanız tarafından korunmaktadır")
              ],
            ),
          )
        ],
      ),
    );
  }
}
