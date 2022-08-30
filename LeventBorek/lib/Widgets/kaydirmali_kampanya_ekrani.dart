import 'package:flutter/material.dart';

import 'kaydirmali_kampanyalar.dart';

class kaydirmali_kampanyalar extends StatelessWidget {
  const kaydirmali_kampanyalar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            Kampanya1_Container(),
            buildContainerKampanya(context, 'assets/images/kampanya3.jpg'),
            buildContainerKampanya(context, 'assets/images/kampanya4.jpg'),
            GestureDetector(
                child: buildContainerKampanya(
                    context, 'assets/images/kampanya5.jpg')),
          ],
        ));
  }

  Container buildContainerKampanya(BuildContext context, String foto) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Image.asset(
        foto,
        fit: BoxFit.fill,
      ),
    );
  }
}