import 'package:flutter/material.dart';
import 'package:foodexpress/components/button.dart';
import 'package:foodexpress/models/food.dart';
import 'package:foodexpress/models/menucard.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //intialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedaddons) {
    Navigator.pop(context); //to close current food page to go back to menu

    //format the selected addons
    List<Addon> curenttlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        curenttlySelectedAddons.add(addon);
      }
    }

    context.read<Menucard>().addToCart(food, curenttlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                widget.food.imagePath,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹${widget.food.price.toString()}/-",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.food.description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Add-ons",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            "₹${addon.price.toString()}/-",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.w500),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    text: "Add to Cart",
                    onTap: () {
                      setState(
                          () => addToCart(widget.food, widget.selectedAddons));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
