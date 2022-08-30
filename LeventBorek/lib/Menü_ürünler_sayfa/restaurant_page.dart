import 'package:flutter/material.dart';
import 'components/menu_card.dart';
import 'components/restaruant_categories.dart';
import 'models/menu.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final scrollController = ScrollController();

  int selectedCategoryIndex = 0;
  double restaurantInfoHeight = 200 - kToolbarHeight;
  @override
  void initState() {
    createbreakPoints();
    scrollController.addListener(() {
      updateCategoryIndexOnScroll(scrollController.offset);
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollToCategory(int index) {
    if (selectedCategoryIndex != index) {
      int totalItems = 0;
      for (var i = 0; i < index; i++) {
        totalItems += demoCategoryMenus[i].items.length;
      }
      scrollController.animateTo(
          restaurantInfoHeight + (116 * totalItems) + (50 * index),
          duration: Duration(milliseconds: 500),
          curve: Curves.ease);
      setState(() {
        selectedCategoryIndex = index;
      });
    }
  }

  List<double> breakPoints = [];
  void createbreakPoints() {
    double firstbreakPoint =
        restaurantInfoHeight + 50 + (116 * demoCategoryMenus[0].items.length);
    breakPoints.add(firstbreakPoint);
    for (var i = 0; i < demoCategoryMenus.length; i++) {
      double breakPoint =
          breakPoints.last + 50 + (116 * demoCategoryMenus[i].items.length);
      breakPoints.add(breakPoint);
    }
  }

  void updateCategoryIndexOnScroll(double offset) {
    for (var i = 0; i < demoCategoryMenus.length; i++) {
      if (i == 0) {
        if ((offset < breakPoints.first) & (selectedCategoryIndex != 0)) {
          setState(() {
            selectedCategoryIndex = 0;
          });
        }
      } else if ((breakPoints[i - 1] <= offset) & (offset < breakPoints[i])) {
        if (selectedCategoryIndex != i) {
          setState(() {
            selectedCategoryIndex = i;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        controller: scrollController,
        slivers: [
          MenuSliverAppBar(),
          SliverPersistentHeader(
            delegate: RestaurantCategories(
                onChanged: scrollToCategory,
                selectedIndex: selectedCategoryIndex),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, categoryIndex) {
              List<Menu> items = demoCategoryMenus[categoryIndex].items;
              return MenuCategoryItem(
                  title: demoCategoryMenus[categoryIndex].category,
                  items: List.generate(
                      items.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: MenuCard(
                                image: items[index].image,
                                title: items[index].title,
                                price: items[index].price),
                          )));
            }, childCount: demoCategoryMenus.length)),
          )
        ],
      ),
    );
  }
}

class MenuSliverAppBar extends StatelessWidget {
  const MenuSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      backgroundColor: Colors.white,
      expandedHeight: 120,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/images/slider.jpg",
          fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16),
      ),
    );
  }
}
