import 'package:flutter/material.dart';
import 'package:leventborek/Menü_ürünler_sayfa/models/menu.dart';
import 'package:provider/provider.dart';


class MenuCategoryItem extends StatelessWidget {
  final _titleTextStyle = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500,);

   MenuCategoryItem({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  final String title;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: _titleTextStyle
          ),
        ),
        ...items,
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  final _titleTextStyle2 = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500,);
  final _titleTextStyle3 =TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF22A45D),);
   MenuCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image, title;
  final double price;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(image),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.black54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: _titleTextStyle2
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Shortbread, chocolate turtle cookies, and red velvet.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "₺$price",
                      style: _titleTextStyle3
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
