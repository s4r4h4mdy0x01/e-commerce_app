import 'package:e_commerce_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const HomeTopBar(),
             
            ],
          ),
        ),
      ),
    );
  }
}
