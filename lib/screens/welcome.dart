// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shopping_app_m/screens/signin.dart';
import 'package:shopping_app_m/screens/signup.dart';

class welcome_scr extends StatefulWidget {
  const welcome_scr({super.key});

  @override
  State<welcome_scr> createState() => _welcome_scrState();
}

class _welcome_scrState extends State<welcome_scr> {
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/welcome.jpg', width: 300, height: 200),

            Image.network(
              'https://www.philomathresearch.com/blog/wp-content/uploads/2023/02/online-shopping-1024x683.jpg',
              width: 300,
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SignIn(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                          transitionDuration: Duration(milliseconds: 500),
                        ),
                      );
                    },
                    child: Text(
                      'Signin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SignUp(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                          transitionDuration: Duration(milliseconds: 500),
                        ),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
