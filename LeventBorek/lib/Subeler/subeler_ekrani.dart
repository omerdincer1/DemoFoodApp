import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class subeler_ekrani extends StatefulWidget {
  const subeler_ekrani({Key? key}) : super(key: key);

  @override
  State<subeler_ekrani> createState() => _subeler_ekraniState();
}

class _subeler_ekraniState extends State<subeler_ekrani> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _LBorek = CameraPosition(
    target: LatLng(37.046050, 35.306064),
    zoom: 14.4746,
  );

  static final Marker _Lborekmarker = Marker(
    markerId: MarkerId("_LBorek"),
    infoWindow: InfoWindow(title: "Levent Börek Özal"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.046050, 35.306064),
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              "Şubelerimiz",
              style: TextStyle(color: Colors.orange),
            )),
            backgroundColor: Colors.white),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration:
                        InputDecoration(hintText: "Şube bulmak için aratınız"),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
            Expanded(
              flex: 5,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _LBorek,
                markers: {_Lborekmarker},
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      color: Colors.grey.shade300,
                      child: Row(
                        children: [
                          Text("Yakınımdakiler"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        KartTasarim(),
                        KartTasarim(),
                        KartTasarim(),
                        KartTasarim(),
                        KartTasarim(),
                      ],
                    ))
                  ],
                )),
          ],
        ));
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_LBorek));
  }
}

class KartTasarim extends StatelessWidget {
  const KartTasarim({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("ŞUBE ADI"),
          onTap: () {},
          subtitle: const Text('Konum Bilgisi'),
          minVerticalPadding: 0,
          dense: true,
          leading: Container(
              height: 200,
              width: 30,
              alignment: Alignment.topCenter,
              child: Center(child: const Icon(Icons.storefront_sharp,color: Colors.orange,))),
          trailing: const SizedBox(width: 20, child: Icon(Icons.location_on,)),
        ),
      ),
    );
  }
}
