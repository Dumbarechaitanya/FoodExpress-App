import 'package:flutter/material.dart';
import 'package:foodexpress/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCatagoryTabs() {
    return FoodCatagory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TabBar(
      labelPadding: const EdgeInsets.only(right: 0, left: 0),
      controller: tabController,
      tabs: _buildCatagoryTabs(),
    ));
  }
}
