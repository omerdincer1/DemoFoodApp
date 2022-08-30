import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:leventborek/AnaSayfa/gelenkutusu.dart';
import '../Widgets/AnaSayfa_widgets.dart';
import '../Widgets/QR_BUTTON.dart';
import '../Widgets/kaydirmali_kampanya_ekrani.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final LeventBorekLogo = "assets/images/lblogo.png";
  SizedBox LogoWidget() => SizedBox(
        child: Image.asset(
          LeventBorekLogo,
          fit: BoxFit.cover,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: QRBUTTON(),
        body: Stack(
          children: [
            AnaSayfa_gelenkutusu_buton(),
            Padding (
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        karsilamaMesajContainer(),
                        LogoWidget(),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Kampanyalar(),
                      kaydirmali_kampanyalar(),
                      icerikler(),
                      tanitimContainer(context, 'assets/images/kampanya2.jpg'),
                      tanitimContainer(context, 'assets/images/tanıtım1.jpg'),
                      tanitimContainer(context, 'assets/images/tanıtım2.png'),

                      //BURAYA REKLAM, AFİŞ,TANITIM CONTAİNERLARI GELECEK
                    ],
                  )),
                ],
              ),
            ),
            //  PositinedQRCode()
          ],
        ));
  }

  Container tanitimContainer(BuildContext context, String image) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
