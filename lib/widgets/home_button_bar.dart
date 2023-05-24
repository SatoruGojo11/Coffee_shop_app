import 'package:flutter/material.dart';

class HomeButtonBar extends StatefulWidget {
  const HomeButtonBar({Key? key}) : super(key: key);

  @override
  State<HomeButtonBar> createState() => _HomeButtonBarState();
}

class _HomeButtonBarState extends State<HomeButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}
