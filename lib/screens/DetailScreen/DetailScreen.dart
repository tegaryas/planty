import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:planty/constant.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrlDetail;
  final String titleDetail;
  final String nameDetail;
  final String categoryDetail;
  final int priceDetail;
  final String sizeDetail;
  final String descriptionDetail;
  final String sunDetail;
  final String tempDetail;
  final String waterDetail;
  const DetailScreen(
      {Key key,
      this.imageUrlDetail,
      this.titleDetail,
      this.nameDetail,
      this.categoryDetail,
      this.priceDetail,
      this.sizeDetail,
      this.descriptionDetail,
      this.sunDetail,
      this.tempDetail,
      this.waterDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.35),
                    padding: EdgeInsets.only(
                        top: size.height * 0.04,
                        left: kDefaultPaddin,
                        right: kDefaultPaddin),
                    height: size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 10,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categoryDetail,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  titleDetail,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              descriptionDetail,
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Detail',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 50,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  TanamanDescription(
                                    detailTextDeskriprsi: tempDetail,
                                    detailTextKategori: 'Temp\n',
                                    detailIcon: Icons.thermostat_sharp,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  TanamanDescription(
                                    detailTextDeskriprsi: waterDetail,
                                    detailTextKategori: 'Water\n',
                                    detailIcon: Icons.waves,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  TanamanDescription(
                                    detailTextDeskriprsi: sunDetail,
                                    detailTextKategori: 'Sun\n',
                                    detailIcon: Icons.wb_sunny,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.lightGreen,
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {},
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        'Pesan',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: kDefaultPaddin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Harga :',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id',
                                              symbol: 'Rp ',
                                              decimalDigits: 0)
                                          .format(priceDetail),
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Ukuran :',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      sizeDetail,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              child: Image.asset(imageUrlDetail),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 22),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 22),
        child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      )
    ],
  );
}

class TanamanDescription extends StatelessWidget {
  final IconData detailIcon;
  final String detailTextKategori;
  final String detailTextDeskriprsi;
  const TanamanDescription({
    Key key,
    this.detailIcon,
    this.detailTextKategori,
    this.detailTextDeskriprsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            detailIcon,
            size: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: kTextColor),
                children: [
                  TextSpan(
                    text: detailTextKategori,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: detailTextDeskriprsi,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
