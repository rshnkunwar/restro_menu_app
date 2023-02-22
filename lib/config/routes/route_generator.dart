import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/strings_manager.dart';
import 'package:restro_menu/views/order_view.dart';
import 'package:restro_menu/views/ordered_items_view.dart';

import 'route_names.dart';
import 'slide_route_animation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeRoute:
        return SlideLeftRoute(
          page: const OrderView(),
          routeName: settings.name!,
        );
      case RouteNames.orderedItemsRoute:
        return SlideLeftRoute(
          page: const OrderedItemsView(),
          routeName: settings.name!,
        );

      default:
        return SlideRightRoute(
          page: const Scaffold(
            body: SafeArea(
              child: Center(child: Text(AppStrings.noRouteFound)),
            ),
          ),
          routeName: settings.name!,
        );
    }
  }
}
