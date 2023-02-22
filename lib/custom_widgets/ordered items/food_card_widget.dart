import 'package:flutter/material.dart';
import 'package:restro_menu/config/resources/colors.dart';

class FoodCardWidget extends StatelessWidget {
  const FoodCardWidget({super.key, required this.food});

  final Map<dynamic, dynamic> food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: [
          SizedBox(
            height: 600,
            width: 700,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: food['foodStatus'] == 'Unknown'
                          ? FoodStatusColors.unknownColor
                          : food['foodStatus'] == 'Cancelled'
                              ? FoodStatusColors.cancelledColor
                              : FoodStatusColors.servedColor,
                      width: 1.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0, top: 10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 231, 231),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 11.0, vertical: 5),
                          child: Text(
                            food['foodQuantity'],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 8),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            food['foodName'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food['foodPrice'],
                            style: TextStyle(
                              color: AppColors.subTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          food['foodStatus'] == 'Unknown'
                              ? const Text('')
                              : Container(
                                  decoration: BoxDecoration(
                                    color: food['foodStatus'] == 'Cancelled'
                                        ? FoodStatusColors.cancelledColor[100]
                                        : FoodStatusColors.servedColor[100],
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3.0, horizontal: 6),
                                    child: Text(
                                      food['foodStatus'],
                                      style: TextStyle(
                                        color: food['foodStatus'] == 'Cancelled'
                                            ? FoodStatusColors.cancelledColor
                                            : FoodStatusColors.servedColor,
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 30,
              child: ClipOval(
                child: Image.network(
                  food['foodPicture'],
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
