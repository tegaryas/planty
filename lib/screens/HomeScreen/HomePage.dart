import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planty/Screens/HomeScreen/HeaderHomePage.dart';
import 'package:planty/constant.dart';
import 'package:planty/models/category_model.dart';
import 'package:planty/screens/HomeScreen/ItemCard.dart';
import 'package:planty/models/plant_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List selectedIndexList = plants;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: kategoris.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      selectedIndexList = kategoris[index].arrayMappedname;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          kategoris[index].label,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: selectedIndex == index
                                ? kTextColor
                                : kTextLightColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: kDefaultPaddin / 4), //top padding 5
                          height: 3,
                          width: 30,
                          color: selectedIndex == index
                              ? Colors.lightGreen
                              : Colors.transparent,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: selectedIndexList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) => ItemCard(
                  imageUrl: selectedIndexList[index].imageUrl,
                  name: selectedIndexList[index].name,
                  title: selectedIndexList[index].title,
                  category: selectedIndexList[index].category,
                  price: selectedIndexList[index].price,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        plant: plants[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      title: Center(
        child: Text(
          'Planty',
          style: GoogleFonts.montserrat(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Colors.lightGreen),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 22),
          child: IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
