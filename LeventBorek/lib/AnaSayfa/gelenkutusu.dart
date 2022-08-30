import 'package:flutter/material.dart';

class gelenkutusu extends StatefulWidget {
  const gelenkutusu({Key? key}) : super(key: key);

  @override
  State<gelenkutusu> createState() => _gelenkutusuState();
}

class _gelenkutusuState extends State<gelenkutusu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: AppBarTitle(),
      ),
      body: Column(
        children: [
          ContainerGelen(),
          ContainerGelen(),
          ContainerGelen(),
          ContainerGelen(),
          ContainerGelen(),

        ],
      ),
    );
  }
}

class ContainerGelen extends StatelessWidget {
  const ContainerGelen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height:100,
      width: 500,
      child: Center(child: Text("Gelen mail örneği")),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Text("Gelen Kutusu"),
    ),);
  }
}
