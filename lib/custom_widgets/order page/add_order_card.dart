import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/color_manager.dart';

class AddOrderCard extends StatelessWidget {
  const AddOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.add),
          Text(
            "Add Order",
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
