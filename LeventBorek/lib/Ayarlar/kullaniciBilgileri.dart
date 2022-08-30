import 'package:flutter/material.dart';

class KullaniciBilgileri extends StatefulWidget {
  const KullaniciBilgileri({Key? key}) : super(key: key);

  @override
  State<KullaniciBilgileri> createState() => _KullaniciBilgileriState();
}

class _KullaniciBilgileriState extends State<KullaniciBilgileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Kullanıcı Bilgileri",),
        )),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextFieldforKullanici("Ad Soyad", "Ömer Dinçer"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextFieldforKullanici("Email", "deneme@gmail.com"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextFieldforKullanici("Cep Telefonu", "05441112233"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Text("Kaydet" ,style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextField buildTextFieldforKullanici(String label, String name) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5, bottom: 3),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: name,
        hintStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
