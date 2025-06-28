import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/constatnts/styles.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar(
      {super.key, required this.tabController, required this.tabs});
  final List<Widget> tabs;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: AppColors.beige),
        child: TabBar(
            controller: tabController,
            indicator: BoxDecoration(
              color: AppColors.salmon,
              borderRadius: BorderRadius.circular(30),
            ),
            labelColor: AppColors.orangeDark,
            labelStyle:
                Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            unselectedLabelColor: AppColors.brownRosy,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            tabs: tabs),
      ),
    );
  }
}
