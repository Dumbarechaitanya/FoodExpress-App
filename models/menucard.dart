import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:foodexpress/models/cartitem.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Menucard extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Burger',
      description:
          "Aloo tikki with mozerella cheese, lettuce, tomato,slice of onion and sauce between the bread",
      imagePath: 'assets/images/burgers/b1.jpg',
      price: 49.00,
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 15),
        Addon(name: 'Tandoori Sause', price: 10),
        Addon(name: 'Mayonnaise', price: 5),
        Addon(name: 'Coke 250 ml', price: 20),
      ],
    ),

    Food(
      name: "Pizza",
      description:
          "Mouthwatering pizza with a variety of toppings on a crispy crust.",
      price: 80,
      imagePath: 'assets/images/pizzas/p2.jpg',
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 15),
        Addon(name: 'Mayonnaise', price: 10),
        Addon(name: "Coke 250 ml", price: 20),
      ],
    ),

    Food(
      name: "Shawarma",
      description:
          "Flavorful shawarma wrap filled with seasoned meat,Letuce,few fries, and sauce.",
      price: 60,
      imagePath: 'assets/images/shawarma/s2.jpg',
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: "Cheese", price: 10),
        Addon(name: "Only Chicken", price: 15),
        Addon(name: "omelet", price: 15),
        Addon(name: "Tandoori Sauce", price: 10),
      ],
    ),
    Food(
      name: "Pasta",
      description: "",
      price: 50,
      imagePath: 'assets/images/pasta/p1.jpg',
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: "Cheese", price: 10),
        Addon(name: "Red Sauce", price: 15),
        Addon(name: "White SAuce", price: 20),
      ],
    ),
    Food(
      name: "Sandwichs",
      description: "",
      price: 40,
      imagePath: 'assets/images/sandwiches/s1.jpg',
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: "Cheese", price: 20),
        Addon(name: "Mozerella", price: 25),
        Addon(name: "Grilled", price: 25),
      ],
    ),

    Food(
      name: "Steamed Momos",
      description:
          "Steamed or fried 8 pieces dumplings filled with savory meat or vegetables, served with dipping sauce.\n **Note** if chicken or panner is selected then you have ordered chicken momos or panner momos",
      price: 60,
      imagePath: 'assets/images/momos/m2.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "with Chicken", price: 20),
        Addon(name: "Cheese", price: 10),
        Addon(name: "Extra sauce", price: 20),
        Addon(name: "with panner", price: 30)
      ],
    ),

    Food(
      name: "Fried Momos",
      description:
          "Steamed or fried 8 pieces dumplings filled with savory meat or vegetables, served with dipping sauce.\n **Note** if chicken or panner is selected then you have ordered chicken momos or panner momos",
      price: 80,
      imagePath: 'assets/images/momos/m4.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "with Chicken", price: 20),
        Addon(name: "Cheese", price: 10),
        Addon(name: "Extra Pauce", price: 20),
        Addon(name: "With Panner", price: 30)
      ],
    ),
    Food(
      name: "Manchurian Chilly",
      description: "",
      price: 40,
      imagePath: 'assets/images/manchurianchilly/m1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Manchurian", price: 20),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: "Panner Chilly",
      description: "",
      price: 50,
      imagePath: 'assets/images/pannerchilly/p1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Panner", price: 20),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: "Chicken Chilly",
      description: "",
      price: 60,
      imagePath: 'assets/images/chickenchilly/c1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 20),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: " Veg Crispy",
      description: "",
      price: 60,
      imagePath: 'assets/images/vegcrispy/v1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Veggies", price: 20),
        // Addon(name: "", price: 10),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: "Panner Crispy",
      description: "",
      price: 60,
      imagePath: 'assets/images/pannercrispy/p1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Panner", price: 20),
        // Addon(name: "", price: 10),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: "Chicken Crispy",
      description: "",
      price: 60,
      imagePath: 'assets/images/chickencrispy/c1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 20),
        // Addon(name: "", price: 10),
        Addon(name: "Extra Sauce", price: 20),
      ],
    ),
    Food(
      name: " Veg Manchow Soup",
      description: "",
      price: 50,
      imagePath: 'assets/images/manchowsoup/m1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [Addon(name: "extra fried Noodles", price: 15)],
    ),
    Food(
      name: "Manchow Soup (Chicken)",
      description: "",
      price: 50,
      imagePath: 'assets/images/manchowsoupchicken/m1.jpg',
      category: FoodCatagory.chinese,
      availableAddons: [Addon(name: "extra fried Noodles", price: 15)],
    ),
    Food(
      name: "Fries",
      description: "Crispy golden fries seasoned to perfection.",
      price: 50,
      imagePath: 'assets/images/fries/f2.jpg',
      category: FoodCatagory.western,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 10),
        Addon(name: "Mayonnaise", price: 10),
        Addon(name: "tandoori Sauce", price: 10),
        Addon(name: "Peri-peri Sauce", price: 10)
      ],
    ),

    Food(
      name: "Vadapav",
      description:
          "Spicy potato fritter sandwiched in a soft bun, served with chutney.",
      price: 20,
      imagePath: 'assets/images/vadapav/v1.jpg',
      category: FoodCatagory.desiStreet,
      availableAddons: [
        Addon(name: "With Cheese", price: 15),
        Addon(name: "Extra Mint &Tarmind Chutney", price: 5),
        Addon(name: "Chopped Onion", price: 5),
        Addon(name: "fried Cornflakes", price: 5)
      ],
    ),

    Food(
      name: "Samosapav",
      description:
          "Crispy samosa served in a bun, topped with chutneys and onions.",
      price: 20,
      imagePath: 'assets/images/samosapav/s1.jpg',
      category: FoodCatagory.desiStreet,
      availableAddons: [
        Addon(name: "With Cheese", price: 15),
        Addon(name: "Extra Mint &Tarmind Chutney", price: 5),
        Addon(name: "Chopped Onion", price: 5),
        Addon(name: "fried Cornflakes", price: 5)
      ],
    ),

    Food(
      name: "Bhajipav",
      description:
          "Raw Potato slices dipped in chickpeas batter served with soft bun and emli chutney and pudina chutney.",
      price: 25,
      imagePath: 'assets/images/bhajipav/b2.jpg',
      category: FoodCatagory.desiStreet,
      availableAddons: [
        Addon(name: "With Cheese", price: 15),
        Addon(name: "Extra Mint &Tarmind Chutney", price: 5),
        Addon(name: "Chopped Onion", price: 5),
        Addon(name: "fried Cornflakes", price: 5)
      ],
    ),
    Food(
      name: "Bread pattice",
      description:
          "Smashed Boiled Potato Masla in between 2 bread Slices  dipped in chickpeas batter served with emli chutney and pudina chutney.",
      price: 25,
      imagePath: 'assets/images/breadpattice/b1.jpg',
      category: FoodCatagory.desiStreet,
      availableAddons: [
        Addon(name: "Extra Mint &Tarmind Chutney", price: 5),
        Addon(name: "Chopped Onion", price: 5),
        Addon(name: "fried Cornflakes", price: 5)
      ],
    ),

    Food(
        name: "Coke-Cola 250ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 20,
        imagePath: 'assets/images/drinks/c1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Coke-Cola 600ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 40,
        imagePath: 'assets/images/drinks/c2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Coke-Cola 1.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 65,
        imagePath: 'assets/images/drinks/c3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Coke-Cola 2.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 90,
        imagePath: 'assets/images/drinks/c4.png',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Sprite 250ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 20,
        imagePath: 'assets/images/drinks/s1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),

    Food(
        name: "Sprite 600ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 40,
        imagePath: 'assets/images/drinks/s2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Sprite 1.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 65,
        imagePath: 'assets/images/drinks/s3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Sprite 2.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 90,
        imagePath: 'assets/images/drinks/s4.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),

    Food(
        name: "Pepsi 250ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 20,
        imagePath: 'assets/images/drinks/p1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Pepsi 600ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 40,
        imagePath: 'assets/images/drinks/p2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Pepsi 1.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 65,
        imagePath: 'assets/images/drinks/p3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Pepsi 2.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 90,
        imagePath: 'assets/images/drinks/p4.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Thumps Up 250ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 20,
        imagePath: 'assets/images/drinks/t1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Thumps Up 600ml",
        description: "Refreshing beverages to quench your thirst.",
        price: 40,
        imagePath: 'assets/images/drinks/t2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Thumps Up 1.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 65,
        imagePath: 'assets/images/drinks/t3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Thumps Up 2.2L",
        description: "Refreshing beverages to quench your thirst.",
        price: 90,
        imagePath: 'assets/images/drinks/t4.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Frooti 250ml",
        description:
            " It is made with natural flavours and mango-concentrate. ",
        price: 20,
        imagePath: 'assets/images/drinks/f1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),

    Food(
        name: "Frooti 600ml",
        description:
            " It is made with natural flavours and mango-concentrate. ",
        price: 40,
        imagePath: 'assets/images/drinks/f2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Frooti 1.2L",
        description:
            " It is made with natural flavours and mango-concentrate. ",
        price: 65,
        imagePath: 'assets/images/drinks/f3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Frooti 2.25L",
        description:
            " It is made with natural flavours and mango-concentrate. ",
        price: 90,
        imagePath: 'assets/images/drinks/f4.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Mazza 250ml ",
        description: "Made from mango pulp and handpicked Alphonso",
        price: 20,
        imagePath: 'assets/images/drinks/m1.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Mazza 600ml",
        description: " made from mango pulp and handpicked Alphonso ",
        price: 40,
        imagePath: 'assets/images/drinks/m2.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),
    Food(
        name: "Mazza 1.2L",
        description: " made from mango pulp and handpicked Alphonso ",
        price: 65,
        imagePath: 'assets/images/drinks/m3.jpg',
        category: FoodCatagory.drinks,
        availableAddons: [
          Addon(name: " ", price: 0),
        ]),

    Food(
      name: "Mazza 2.25L",
      description: " made from mango pulp and handpicked Alphonso",
      price: 85,
      imagePath: 'assets/images/drinks/m4.jpg',
      category: FoodCatagory.drinks,
      availableAddons: [Addon(name: " ", price: 0)],
    ),

    Food(
        name: "Meduvada",
        description:
            "Crispy South Indian lentil fritters served with chutney and sambar.",
        price: 40,
        imagePath: 'assets/images/meduvada/m2.jpg',
        category: FoodCatagory.southIndian,
        availableAddons: [
          Addon(name: " Extra Coconut Chutney", price: 5),
          Addon(name: " Extra Sambar", price: 10),
          Addon(name: "Tomato Onion Chutney", price: 5),
        ]),

    Food(
        name: "Dalvada",
        description:
            "Spicy lentil fritters made with mixed lentils, served hot.",
        price: 40,
        imagePath: 'assets/images/dalvada/d2.jpg',
        category: FoodCatagory.southIndian,
        availableAddons: [
          Addon(name: " Extra Coconut Chutney", price: 5),
          Addon(name: " Extra Sambar", price: 10),
          Addon(name: "Tomato Onion Chutney", price: 5),
        ]),

    Food(
        name: "Idli",
        description:
            "Soft and fluffy steamed rice cakes, served with chutney and sambar.",
        price: 30,
        imagePath: 'assets/images/idli/i1.jpg',
        category: FoodCatagory.southIndian,
        availableAddons: [
          Addon(name: "Extra Coconut Chutney", price: 5),
          Addon(name: "Extra Sambar", price: 10),
          Addon(name: "Tomato Onion Chutney", price: 5),
          Addon(name: "Chass 250 ml", price: 15)
        ]),

    Food(
      name: "Uttapam",
      description:
          "Thick savory pancake made with rice and lentil batter, topped with vegetables.",
      price: 30,
      imagePath: 'assets/images/uttapam/u2.jpg',
      category: FoodCatagory.southIndian,
      availableAddons: [
        Addon(name: "Extra Tomato Onion Chutney", price: 5),
        Addon(name: "Onion and tomato  Toppings", price: 10),
        Addon(name: "Potato masala spread", price: 15),
        Addon(name: "Extra Coconut chutney", price: 5),
      ],
    ),

    Food(
        name: "Dosa",
        description:
            "Crispy crepe made from fermented rice and lentil batter, served with chutney and sambar.",
        price: 35,
        imagePath: 'assets/images/dosa/d2.jpg',
        category: FoodCatagory.southIndian,
        availableAddons: [
          Addon(name: "Extra Coconut Chutney", price: 5),
          Addon(name: "Potato Masala", price: 15),
          Addon(name: "Tomato Onion Chutney", price: 5),
          Addon(name: "Extra Sambhar", price: 5),
        ]),

    Food(
      name: "Appam",
      description:
          "Soft and fluffy pancake made from fermented rice batter, with a crispy edge.",
      price: 20,
      imagePath: 'assets/images/appam/a1.jpg',
      category: FoodCatagory.southIndian,
      availableAddons: [
        Addon(name: "Extra Coconut Chutney", price: 5),
        Addon(name: "Extra Sambhar", price: 5),
        Addon(name: "Potato masala", price: 15),
        Addon(name: 'Chass 250 ml', price: 15),
        Addon(name: 'Lassi 250 ml', price: 20),
      ],
    ),

    Food(
        name: "Misalpav",
        description:
            "Spicy curry made with sprouted lentils, topped with farsan and served with pav,curd and gulabJamun. ",
        imagePath: 'assets/images/misalpav/m2.jpg',
        price: 70,
        category: FoodCatagory.desiStreet,
        availableAddons: [
          Addon(name: "Farsan Topping", price: 10),
          Addon(name: "Extra Rassa", price: 15),
          Addon(name: "extra Chopped Coriander and lemon wedges", price: 5),
          Addon(name: " 2 Pav", price: 10),
          Addon(name: " Chass 250ml", price: 15),
          Addon(name: " Lassi 250ml", price: 20),
        ]),

    Food(
      name: "Vada Usalpav",
      description:
          "Spicy curry made with sprouted beans, served with soft pav,curd and gulabJamun.",
      imagePath: 'assets/images/usalpav/u1.jpg',
      price: 60,
      category: FoodCatagory.desiStreet,
      availableAddons: [
        Addon(name: "Extra Sev Topping", price: 10),
        Addon(name: "Extra Usal", price: 15),
        Addon(name: "extra Chopped Coriander and lemon wedges", price: 5),
        Addon(name: " 2 Pav", price: 10),
        Addon(name: " Chass 250ml", price: 15),
        Addon(name: " Lassi 250ml", price: 20),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery Address
  String _deliveryAddress = 'Your Location';

  /* G E T T E R S */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*  O P E R A T E R S  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the list of food item are same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get totla price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  //get

  /*     H E L P E R S     */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat(' dd-MM-yyyy  HH:mm').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons:\n ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total price : ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery Address : $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}/-";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(" , ");
  }
}
