// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:planty/constant.dart';
// import 'package:planty/models/plant_model.dart';

// class Body extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String name;
//   final String category;
//   final int price;
//   const Body({
//     Key key,
//     this.imageUrl,
//     this.title,
//     this.name,
//     this.category,
//     this.price,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return ;
//   }
// }

// class TanamanDescriptionSun extends StatelessWidget {
//   final String sun;
//   const TanamanDescriptionSun({
//     Key key,
//     this.sun,
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
//                     text: sun,
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
