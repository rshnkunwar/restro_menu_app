import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/values_manager.dart';
import 'package:restro_menu/config/routes/route_names.dart';
import 'package:restro_menu/custom_widgets/order%20page/add_order_card.dart';
import 'package:restro_menu/custom_widgets/order%20page/order_card_widget.dart';
import 'package:restro_menu/models/order_list_model.dart';

class OrderGridWidget extends StatelessWidget {
  const OrderGridWidget({super.key, required this.ordersList});
  final List<Datum> ordersList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppMargin.m10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: ordersList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.6,
          crossAxisSpacing: 12,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          Datum order = ordersList[index];
          if (index == 0) {
            return const AddOrderCard();
          } else {
            return InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, RouteNames.orderedItemsRoute),
              child: OrderCardWidget(data: order),
            );
          }
        },
      ),
    );
  }
}
