import 'package:flutter/material.dart';
import 'package:foodexpress/models/menucard.dart';
import 'package:provider/provider.dart';

class MyLocation extends StatelessWidget {
  MyLocation({super.key});

  final textController = TextEditingController();

  void openLocationSerachBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your location"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: "Enter Address ..."),
        ),
        actions: [
          //cancel button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text("Cancel"),
          ),

          //save button
          MaterialButton(
            onPressed: () {
              String newAddress = textController.text;
              context.read<Menucard>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now at :",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSerachBox(context),
            child: Row(
              children: [
                //address
                Consumer<Menucard>(
                  builder: (context, menucard, child) => Text(
                    menucard.deliveryAddress,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //dropdown menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
