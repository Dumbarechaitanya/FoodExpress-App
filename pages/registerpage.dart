// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:foodexpress/models/custerinfo.dart';
import 'package:foodexpress/services/auth/authservices.dart';
import 'package:provider/provider.dart';
import '../components/button.dart';
import '../components/textfield.dart';

class Registerpage extends StatefulWidget {
  final void Function()? onTap;

  const Registerpage({super.key, required this.onTap});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  void register() async {
    // Get auth services
    final _authService = AuthServices();

    if (passwordController.text == confirmpasswordController.text) {
      // Try creating user
      try {
        // Sign up user with email and password
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );

        // If user is successfully signed up, update CustomerInfo provider
        final customerInfo = Provider.of<CustomerInfo>(context, listen: false);
        customerInfo.updateInfo(
          nameController.text,
          mobileController.text,
          emailController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords do not match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // to change background colors go to lightmode.dart or darkmode.dart file
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),
                //message
                Text(
                  "Lets create an Account for you",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                //username
                const SizedBox(height: 25),
                //emailtextfield
                MyTextField(
                  controller: nameController,
                  hintText: "Name",
                  obscureText: false,
                ),

                //your mobile no
                const SizedBox(height: 25),
                //emailtextfield
                MyTextField(
                  controller: mobileController,
                  hintText: "Mobile Number",
                  obscureText: false,
                ),

                const SizedBox(height: 25),
                //emailtextfield
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //passwordfield
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //confirmpassword
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //submitbutton
                MyButton(
                  text: "Sign In",
                  onTap: register,
                ),

                //not a member? Regester now!
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have Account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now!",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
