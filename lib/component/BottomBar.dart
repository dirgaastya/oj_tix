import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BotBar extends StatefulWidget {
  const BotBar({super.key});

  @override
  State<BotBar> createState() => _BotBarState();
}

class _BotBarState extends State<BotBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 100,
            spreadRadius: 0,
          ),
        ],
      ),
      child: FluidNavBar(
        style: FluidNavBarStyle(
          barBackgroundColor: Colors.white,
        ),
        icons: [
          FluidNavBarIcon(icon: Icons.home, backgroundColor: Colors.white),
          FluidNavBarIcon(icon: Icons.history, backgroundColor: Colors.white),
          FluidNavBarIcon(
              icon: Icons.account_circle_rounded,
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
