// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shopping_app_m/functions/alerts.dart';
import 'package:shopping_app_m/screens/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hidden_pass = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping App',
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Not Valid";
                  } else if (!value.contains("@")) {
                    return "Invalid Email";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Not Valid";
                  } else if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      hidden_pass = !hidden_pass;
                      setState(() {});
                    },
                    icon: Icon(
                      hidden_pass ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                obscureText: hidden_pass,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // debugPrint(nameController.text);
                // debugPrint(emailController.text);
                // debugPrint(passwordController.text);
                if (_formKey.currentState!.validate()) {
                  debugPrint("Valid");
                  showCustomDialog(
                    context,
                    "Success",
                    "Account sign-in successfully!",
                  );

                  // Navigate to home screen with fade animation after a short delay
                  Future.delayed(Duration(milliseconds: 1500), () {
                    Navigator.pushReplacement(
                      // ignore: use_build_context_synchronously
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            home_scr(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                        transitionDuration: Duration(milliseconds: 800),
                      ),
                    );
                  });
                }
              },
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
