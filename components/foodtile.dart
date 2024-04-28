import 'package:flutter/material.dart';
import 'package:foodexpress/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                //text food
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      Text(
                        "₹${food.price.toString()}/-",
                        style: const TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),

                //food image

                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
