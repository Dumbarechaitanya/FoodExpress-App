import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.secondary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '₹100',
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery Charges",
                style: mySecondaryTextStyle,
              ),
            ],
          ),
          // Spacer(),
          //delivery time
          Column(
            children: [
              Text(
                '15-30 mins',
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery time",
                style: mySecondaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
