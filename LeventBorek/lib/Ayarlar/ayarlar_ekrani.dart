import 'package:flutter/material.dart';

import 'bildirimtercihleri.dart';
import 'kullaniciBilgileri.dart';

class ayarlar_ekrani extends StatefulWidget {
  const ayarlar_ekrani({Key? key}) : super(key: key);

  @override
  State<ayarlar_ekrani> createState() => _SettingsOpenPageState();
}

class _SettingsOpenPageState extends State<ayarlar_ekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            "Hesabım",
            style: TextStyle(color: Colors.orange),
          )),
        ),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => KullaniciBilgileri()));
                },
                leading: Icon(Icons.person, size: 40),
                title: Text('Kullanıcı Bilgileri'),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BildirimTercihleri()));
                },
                leading: Icon(Icons.notifications, size: 40),
                title: Text('Bildirim Tercihleri'),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.person, size: 40),
                title: Text('Güvenlik'),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.wallet, size: 40),
                title: Text('LB Card'),
                trailing:
                Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.shopping_basket_rounded, size: 40),
                title: Text('Geçmiş Siparişler'),
                trailing:
                Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.help_outline_rounded, size: 40),
                title: Text('Yardım'),
                trailing:
                Icon(Icons.navigate_next_rounded, color: Colors.orange),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text(
                    "Çıkış Yap",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
