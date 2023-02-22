import 'package:flutter/material.dart';

class AppColors {
  AppColors._backgroundcolor() {
    throw UnimplementedError();
  }
  static get appBackgroundColor {
    return Colors.white;
  }

  static get titleTextColor {
    return Colors.black;
  }

  static get subTextColor {
    return Colors.grey;
  }

  static get redColor {
    return Colors.red;
  }
}

class FoodStatusColors {
  FoodStatusColors._foodStatusColor() {
    throw UnimplementedError();
  }
  static get unknownColor {
    return Colors.grey;
  }

  static get servedColor {
    return Colors.green;
  }

  static get cancelledColor {
    return Colors.red;
  }
}
