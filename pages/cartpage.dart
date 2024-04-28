import 'package:flutter/material.dart';
import 'package:foodexpress/components/button.dart';
import 'package:foodexpress/components/carttile.dart';
import 'package:foodexpress/components/descriptionbox.dart';
import 'package:foodexpress/components/location.dart';
import 'package:foodexpress/models/menucard.dart';
import 'package:foodexpress/pages/paymentpage.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Menucard>(
      builder: (context, menucard, child) {
        final userCart = menucard.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("C A R T")),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        "Are you sure you want to clear the cart? ",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            menucard.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              //List of cart
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //my locations
                    MyLocation(),

                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),

                    //description box
                    const MyDescriptionBox(),
                    if (userCart.isEmpty)
                      const Expanded(
                        child: Center(child: Text("Cart is Empty...")),
                      )
                    else
                      Flexible(
                        child: Container(
                          constraints: const BoxConstraints(
                              maxHeight: 300), // Adjust the maxHeight as needed
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = userCart[index];
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              //button to pay
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
                text: "Checkout",
              ),

              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
