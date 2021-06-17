import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 24,
            ),
            onPressed: () {
              print('Menu');
            },
          ),
          Text(
            'Planty',
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.lightGreen),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 24,
            ),
            onPressed: () {
              print('like');
            },
          ),
        ],
      ),
    );
  }
}
