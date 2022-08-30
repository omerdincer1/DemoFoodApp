import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BildirimTercihleri extends StatefulWidget {
  const BildirimTercihleri({Key? key}) : super(key: key);

  @override
  State<BildirimTercihleri> createState() => _BildirimTercihleriState();
}

class _BildirimTercihleriState extends State<BildirimTercihleri> {
  bool val1 =true;
  bool val2=true;
  bool val3=true;

  onChangedFunction1(bool newValue1){
    setState(() {
      val1=newValue1;
    });
  }
  onChangedFunction2(bool newValue2){
    setState(() {
      val2=newValue2;
    });
  }
  onChangedFunction3(bool newValue3){
    setState(() {
      val3=newValue3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.orange,
        title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Bildirim Tercihleri",),
            )),
      ),
      body:Column(
        children: [
          buildNotificationOptionRow("SMS Bildirimleri", val1,onChangedFunction1),
          buildNotificationOptionRow("Uygulama Bildirimleri", val2,onChangedFunction2),
          buildNotificationOptionRow("Email", val3,onChangedFunction3),
        ],

      ),
    );
  }
}
Card buildNotificationOptionRow(String title, bool val,Function onChangeMethod) {
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        ),
        CupertinoSwitch(
          trackColor: Colors.grey,
          activeColor: Colors.orange,
          value: val,
          onChanged: (newValue) {
            onChangeMethod(newValue);
          },
        )
      ],
    ),
  );
}