import 'dart:math';

import 'package:flutter/material.dart';
import 'package:restro_menu/models/order_list_model.dart';

class OrderCardWidget extends StatelessWidget {
  const OrderCardWidget({super.key, required this.data});
  final Datum data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              data.tableName,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Table",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              data.time,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colors.greenAccent, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.items.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Item item = data.items[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.primaries[Random()
                                            .nextInt(Colors.primaries.length)]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 3.0, top: 2),
                                    child: Text(
                                      item.name,
                                      style: const TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: Text(
                                  item.quanity.toString(),
                                  style: const TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(children: [
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Text(
                                "Dishes: ${data.dished}",
                                style: const TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Text(
                                "KOT: ${data.kot}",
                                style: const TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
