import 'package:flutter/material.dart';
import 'package:foodexpress/components/receipt.dart';
import 'package:foodexpress/models/menucard.dart';
import 'package:foodexpress/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  //get acess to database
  FirestoreService db = FirestoreService();
  @override
  void initState() {
    super.initState();

    //if we get to this page ,submit order
    String receipt = context.read<Menucard>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Y O U R B I L L"),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        bottomNavigationBar: _buildBottomNavBar(context),
        body: const SingleChildScrollView(
          child: Column(
            children: [MyReceipt()],
          ),
        ),
      ),
    );
  }

  // custom bottom nav bar - message /call delivery driver \\\
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(height: 10),

          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ramesh",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              //message buttons
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 10),

              //call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
