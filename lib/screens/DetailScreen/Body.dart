// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:planty/constant.dart';
// import 'package:planty/models/plant_model.dart';

// class Body extends StatelessWidget {
//   final Plant plant;
//   const Body({
//     Key key,
//     this.plant,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height,
//             child: Stack(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: size.height * 0.35),
//                   padding: EdgeInsets.only(
//                       top: size.height * 0.04,
//                       left: kDefaultPaddin,
//                       right: kDefaultPaddin),
//                   height: size.height,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(50),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 7,
//                         blurRadius: 10,
//                         offset: Offset(2, 2), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 plant.category,
//                                 style: GoogleFonts.montserrat(
//                                   fontSize: 16,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               Text(
//                                 plant.name,
//                                 style: GoogleFonts.montserrat(
//                                   fontSize: 25,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )
//                             ],
//                           ),
//                           Icon(
//                             Icons.favorite,
//                             color: Colors.red,
//                             size: 30,
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 25,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Deskripsi',
//                             style: GoogleFonts.montserrat(
//                               fontSize: 20,
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 16,
//                           ),
//                           Text(
//                             plant.description,
//                             style: GoogleFonts.montserrat(
//                               fontSize: 15,
//                               color: Colors.black,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 35,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Detail',
//                             style: GoogleFonts.montserrat(
//                               fontSize: 20,
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 16,
//                           ),
//                           Container(
//                             height: 50,
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 TanamanDescriptionSun(plant: plant),
//                                 SizedBox(
//                                   width: 25,
//                                 ),
//                                 TanamanDescriptionTemp(plant: plant),
//                                 SizedBox(
//                                   width: 25,
//                                 ),
//                                 TanamanDescriptionWater(plant: plant),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 35,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: SizedBox(
//                               height: 50,
//                               child: FlatButton(
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)),
//                                 color: Colors.lightGreen,
//                                 onPressed: () {},
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Icon(
//                                       Icons.shopping_cart,
//                                       color: Colors.white,
//                                       size: 20,
//                                     ),
//                                     SizedBox(
//                                       width: 12,
//                                     ),
//                                     Text(
//                                       'Pesan',
//                                       style: GoogleFonts.montserrat(
//                                         fontSize: 18,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w300,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: kDefaultPaddin),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Harga :',
//                                 style: GoogleFonts.montserrat(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     NumberFormat.currency(
//                                             locale: 'id',
//                                             symbol: 'Rp ',
//                                             decimalDigits: 0)
//                                         .format(plant.price),
//                                     style: GoogleFonts.montserrat(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Text(
//                                 'Ukuran :',
//                                 style: GoogleFonts.montserrat(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     plant.size,
//                                     style: GoogleFonts.montserrat(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 2,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Expanded(
//                             child: Image.asset(plant.imageUrl),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TanamanDescriptionSun extends StatelessWidget {
//   final Plant plant;
//   const TanamanDescriptionSun({
//     Key key,
//     this.plant,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: 45,
//           width: 45,
//           decoration: BoxDecoration(
//             color: Colors.lightGreen,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(
//             Icons.wb_sunny,
//             size: 25,
//             color: Colors.white,
//           ),
//         ),
//         SizedBox(width: 10),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//               text: TextSpan(
//                 style: TextStyle(color: kTextColor),
//                 children: [
//                   TextSpan(
//                     text: "Sun\n",
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextSpan(
//                     text: plant.sun,
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class TanamanDescriptionTemp extends StatelessWidget {
//   final Plant plant;
//   const TanamanDescriptionTemp({
//     Key key,
//     this.plant,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: 45,
//           width: 45,
//           decoration: BoxDecoration(
//             color: Colors.lightGreen,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(
//             Icons.thermostat_sharp,
//             size: 25,
//             color: Colors.white,
//           ),
//         ),
//         SizedBox(width: 10),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//               text: TextSpan(
//                 style: TextStyle(color: kTextColor),
//                 children: [
//                   TextSpan(
//                     text: "Temp\n",
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextSpan(
//                     text: plant.temp,
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class TanamanDescriptionWater extends StatelessWidget {
//   final Plant plant;
//   const TanamanDescriptionWater({
//     Key key,
//     this.plant,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: 45,
//           width: 45,
//           decoration: BoxDecoration(
//             color: Colors.lightGreen,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(
//             Icons.waves,
//             size: 25,
//             color: Colors.white,
//           ),
//         ),
//         SizedBox(width: 10),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//               text: TextSpan(
//                 style: TextStyle(color: kTextColor),
//                 children: [
//                   TextSpan(
//                     text: "Water\n",
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextSpan(
//                     text: plant.water,
//                     style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
