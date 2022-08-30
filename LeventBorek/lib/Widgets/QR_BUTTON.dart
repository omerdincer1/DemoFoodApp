import 'package:flutter/material.dart';

import 'LBCard_bottomsheet.dart';

class QRBUTTON extends StatelessWidget {
  const QRBUTTON({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            builder: (context) {
              return LBCard_bottomSheet();
            });
      },

      label: Text(
        "QR Okut",
        textScaleFactor: 0.7,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.orange,
      //icon: Icon(Icons.qr_code_2,color: Colors.white,),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}
