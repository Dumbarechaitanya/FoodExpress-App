import 'package:flutter/material.dart';
import 'package:foodexpress/components/drawer.dart';
import 'package:foodexpress/components/foodtile.dart';
import 'package:foodexpress/components/silverappbar.dart';
import 'package:foodexpress/components/tabbar.dart';
import 'package:foodexpress/models/food.dart';
import 'package:foodexpress/models/menucard.dart';
import 'package:foodexpress/pages/foodpage.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  //tabbar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCatagory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belond=s to specfic categories
  List<Food> _filterMenuByCategory(FoodCatagory catagory, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == catagory).toList();
  }

  //return list of foods ingiven category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCatagory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ],
        body: Consumer<Menucard>(
          builder: (context, menucard, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(
              menucard.menu,
            ),
          ),
        ),
      ),
    );
  }
}
