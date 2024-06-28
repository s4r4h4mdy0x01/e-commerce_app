import 'package:e_commerce_app/core/helpers/shared_pref_helper.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () async {
              print(
                  "isLoggedInUserisLoggedInUserisLoggedInUserisLoggedInUser$isLoggedInUser");
              String? accessToken = await SharedPrefHelper.getSecuredString(
                  SharedPrefKeys.accessToken);
              print(accessToken);
            },
            child: Text('HOME ScRRRRRRRRR')),
      ),
    );
  }
}
