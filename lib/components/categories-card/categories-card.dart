import 'package:flutter/material.dart';
import 'package:tathastu/components/category-item/category-item.dart';

class CategoriesCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey[100],
                        blurRadius: 20.0,
                spreadRadius: 1.0,
                offset: Offset(0, 10),
                      ),
                    ],
                  ),
      child: Wrap(
        spacing: 16.0, // gap between adjacent chips
        // runSpacing: 4.0, // gap between lines
        children: <Widget>[
          CategoryItemComponent('assets/icons/plumber.svg', 'Plumber'),
          CategoryItemComponent('assets/icons/electrician.svg', 'Electrician'),
          CategoryItemComponent('assets/icons/carpenter.svg', 'Carpenter'),
          CategoryItemComponent('assets/icons/masonary.svg', 'Masonary'),
          CategoryItemComponent('assets/icons/paint-roller.svg', 'Painter'),
          CategoryItemComponent('assets/icons/car-repair.svg', 'Car Repair'),
          CategoryItemComponent('assets/icons/manager.svg', 'RTO Agent'),
          CategoryItemComponent('assets/icons/alarm.svg', 'Helplines'),
        ],
      ),
    );
  }
}
