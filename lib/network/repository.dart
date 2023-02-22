import 'package:restro_menu/config/constants/json_order_data.dart';
import 'package:restro_menu/models/order_list_model.dart';

class Repository {
  OrderListModel loadData() {
    return OrderListModel.fromJson(jsonOrderData);
  }
}
