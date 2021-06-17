// import 'package:flutter/material.dart';
// import 'package:planty/models/plant_model.dart';
// import 'package:planty/screens/DetailScreen/Body.dart';

// class DetailScreen extends StatelessWidget {
//   final Plant plant;
//   const DetailScreen({Key key, this.plant}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: Body(plant: plant),
//     );
//   }
// }

// AppBar buildAppBar(BuildContext context) {
//   return AppBar(
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//     leading: Padding(
//       padding: const EdgeInsets.only(left: 22),
//       child: IconButton(
//         icon: Icon(
//           Icons.arrow_back_ios,
//           color: Colors.black,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//     ),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.only(right: 22),
//         child: IconButton(
//           icon: Icon(
//             Icons.shopping_cart,
//             color: Colors.black,
//           ),
//           onPressed: () {},
//         ),
//       )
//     ],
//   );
// }
