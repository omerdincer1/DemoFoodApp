
import 'package:flutter/material.dart';


import '../AnaSayfa/gelenkutusu.dart';
import 'AnaSayfa_widgets.dart';
class AnasayfaRow extends StatelessWidget {
  const AnasayfaRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Icon(
            Icons.notifications,
            color: Colors.black54,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => gelenkutusu()));
            },
            child: Text(Textler().gelen, style: RowTextStyle()),
          ),
          Text(Textler().bosluk, style: TextStyle(color: Colors.black)),
          Icon(
            Icons.calendar_month_outlined,
            color: Colors.black54,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              Textler().siparis,
              style: RowTextStyle(),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.settings,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}