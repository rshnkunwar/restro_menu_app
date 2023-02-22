import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/color_manager.dart';
import 'package:restro_menu/custom_widgets/order%20page/custom_appbar.dart';
import 'package:restro_menu/custom_widgets/order%20page/custom_bottom_nav.dart';
import 'package:restro_menu/custom_widgets/order%20page/order_gridview_widget.dart';
import 'package:restro_menu/models/order_list_model.dart';
import 'package:restro_menu/network/repository.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  OrderListModel orderList = Repository().loadData();

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
      appBar: CustomAppBar(tabController: _tabController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.dashboard_customize_outlined,
          color: ColorManager.red,
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrderGridWidget(ordersList: orderList.data),
          const Center(child: Text("KOT Page Here!!")),
        ],
      ),
    );
  }
}
