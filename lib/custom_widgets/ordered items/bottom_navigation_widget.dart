import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/colors.dart';
import 'package:restro_menu/config/resources/strings_manager.dart';

class ButtomMenuOrderedItemWidget extends StatelessWidget {
  const ButtomMenuOrderedItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  AppStrings.kot204,
                  style: TextStyle(
                      color: AppColors.subTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, bottom: 15),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.redColor),
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: AppColors.appBackgroundColor,
                      )),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              height: 3,
              thickness: 1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 18.0, right: 18, top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text(
                  AppStrings.totalPrice,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: AppColors.titleTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: 230,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.redColor),
                    ),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: AppColors.appBackgroundColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
