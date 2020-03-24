import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySection extends StatefulWidget {
  String category;
  List<Map<String, dynamic>> map;

  CategorySection(this.category, this.map);

  @override
  _CategorySectionState createState() =>
      _CategorySectionState(this.category, this.map);
}

class _CategorySectionState extends State<CategorySection> {
  String category;
  List<Map<String, dynamic>> map;

  _CategorySectionState(this.category, this.map);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 14,
      shadowColor: Color(0x802196f3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer("$category"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: artistsInfo(),
          )
        ],
      ),
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  Widget artistsInfo() {
    return Container(
        height: 180.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://lh3.googleusercontent.com/aYbdIM1abwyVSUZLDKoE0CDZGRhlkpsaPOg9tNnBktUQYsXflwknnOn2Ge1Yr7rImGk=s180-rw',
                'Instagram telegram',
                '4.8'),
          ],
        ));
  }


  Widget imageSection(String imageVal, String appVal, String rateVal) {
    return Card(
      color: Colors.transparent,
      elevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 150.0,
            decoration: new BoxDecoration(
                image: DecorationImage(
//                  image: new NetworkImage(imageVal),
                image: new AssetImage("assets/img/eza-meret.JPG"),
                  fit: BoxFit.fill,
                ),
            borderRadius: BorderRadius.circular(20.0),
                ),
          ),


          Positioned(
            bottom: 0,
            child: Container(

//              decoration: BoxDecoration(
//                color: Colors.black38,
//                borderRadius: BorderRadius.circular(20.0),
//              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      appVal,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "$rateVal ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.solidThumbsUp,
                            size: 10.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
