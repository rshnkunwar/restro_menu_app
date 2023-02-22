import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/color_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorManager.white,
      toolbarHeight: 60,
      title: Row(
        children: [
          Text(
            "The Grill",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: ColorManager.black),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: ColorManager.black,
              ),
            ),
          )
        ],
      ),
      actions: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "Help",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black45),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.help_outline_sharp,
                color: Colors.black45,
              ),
            )
          ],
        ),
      ],
      bottom: TabBar(
        controller: tabController,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.black54,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: ColorManager.red,
        tabs: const [
          Tab(
            text: "Order",
          ),
          Tab(text: "KOT"),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
