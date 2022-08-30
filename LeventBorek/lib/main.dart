import 'package:flutter/material.dart';
import 'package:leventborek/AnaSayfa/AcilisEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Levent Börek',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        splashColor: Colors.orange,


      ),
      home: Center(
        child: AcilisEkrani(),
      ),
    );

  }
}
