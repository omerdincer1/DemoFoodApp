
class Menu {
  final String title, image;
  final double price;

  Menu( {required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "En Popülerler",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/börek.png",
        title: "Peynirli Börek",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Ornek",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Ornek",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/börek.png",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Börekler",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/börek.png",
        title: "Combo Burger",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/börek.png",
        title: "Oyster Dish",
      ),
    ],
  ),
  CategoryMenu(
    category: "İçecekler",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/börek.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryMenu(
    category: "Alternatifler",
    items: [
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/börek.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/börek.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Chow Fun",
      ),
    ],
  ),
  CategoryMenu(
    category: "Tatlılar",
    items: [
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Combo Sandwich",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/börek.png",
        title: "Cookie Sandwich",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Dim SUm",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/börek.png",
        title: "Oyster Dish",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/börek.png",
        title: "Oyster On Ice",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/börek.png",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
];
