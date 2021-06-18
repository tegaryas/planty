import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:planty/screens/DetailScreen/DetailScreen.dart';

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;
  final String sun;
  final String temp;
  final String water;
  const ItemCard({
    Key key,
    this.imageUrl,
    this.title,
    this.name,
    this.category,
    this.price,
    this.size,
    this.description,
    this.sun,
    this.temp,
    this.water,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            imageUrlDetail: imageUrl,
            titleDetail: title,
            categoryDetail: category,
            priceDetail: price,
            sizeDetail: size,
            descriptionDetail: description,
            sunDetail: sun,
            tempDetail: temp,
            waterDetail: water,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                child: Image.asset(imageUrl),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(price),
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
