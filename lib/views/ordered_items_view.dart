import 'package:flutter/material.dart';
import 'package:restro_menu/config/constants/json_ordered_items.dart';
import 'package:restro_menu/config/resources/color_manager.dart';
import 'package:restro_menu/config/resources/colors.dart';
import 'package:restro_menu/config/resources/strings_manager.dart';
import 'package:restro_menu/custom_widgets/ordered%20items/bottom_navigation_widget.dart';
import 'package:restro_menu/custom_widgets/ordered%20items/food_card_widget.dart';

class OrderedItemsView extends StatefulWidget {
  const OrderedItemsView({super.key});

  @override
  State<OrderedItemsView> createState() => _OrderedItemsViewState();
}

class _OrderedItemsViewState extends State<OrderedItemsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: AppColors.appBackgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: Text(
          AppStrings.table05,
          style: TextStyle(
              color: AppColors.titleTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black54,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(5.0),
          indicatorColor: ColorManager.red,
          tabs: const [
            Tab(
              text: "Dishes",
            ),
            Tab(text: "KOT"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.kot205,
                      style: TextStyle(
                          color: AppColors.subTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return FoodCardWidget(food: table05[index]);
                      },
                      itemCount: table05.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.2,
                        crossAxisSpacing: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Center(child: Text("KOT Page Here!!")),
        ],
      ),
      bottomNavigationBar: const ButtomMenuOrderedItemWidget(),
    );
  }
}
