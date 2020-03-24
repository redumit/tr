import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';
import 'package:tr/components/categorySection.dart';
import 'package:tr/components/videoPlayer.dart';
import 'package:expandable/expandable.dart';

class AllPageView extends StatefulWidget {
  @override
  _AllPageViewState createState() => _AllPageViewState();
}

class _AllPageViewState extends State<AllPageView> {

  static Map<String, dynamic> musicString={
    "title":"Zemay",
    "urlImg":"data:image/jpeg;base64,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",
    "urlVideo":"https://youtu.be/t3oFLSUa0Mw"
  };
//  Map<String,dynamic> musicMap = jsonDecode(musicString);
  //list of advertising urls
  final List<Map<String, dynamic>> advertises = [
    {
      'imgUrl':
          "https://ichef.bbci.co.uk/news/270/cpsprodpb/C639/production/_111254705_gettyimages-1143010898.jpg",
      'link': "https://www.bbc.com/news/av/embed/p086kxp8/51879695",
      "localImg": "assets/img/nigussse.jpg"
    },
    {
      'imgUrl':
          "https://ichef.bbci.co.uk/news/200/cpsprodpb/15E47/production/_111217698_seal.jpg",
      'link': "https://www.bbc.com/reel/embed/p07p7xc1",
      "localImg": "assets/img/eza-meret.JPG"
    },
    {
      'imgUrl': "https://ichef.bbci.co.uk/images/ic/768x432/p0863pql.jpg",
      'link': "https://www.bbc.com/reel/embed/p0862547",
      "localImg": "assets/img/tigirgina.JPG"
    },
  ];
  final List<Map<String, dynamic>> artistsList = [
    {
      "name": "Nigusse Abadi",
      "img":
          "data:image/jpeg;base64,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",
      "link": "https://www.youtube.com/watch?v=CGkVCMCilJM"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        sliderContainer(context),
        SizedBox(
          height: 20,
        ),
        artists(context),
        SizedBox(
          height: 20,
        ),
        CategorySection("Top Rated",artistsList),
      ],
    );
  }

  Widget sliderContainer(BuildContext ctx) {
    return CarouselSlider(
      viewportFraction: 0.95,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      autoPlayInterval: Duration(seconds: 5),
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      items: advertises.map(
        (url) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset(
                      url['localImg'],
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 10,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      color: Colors.black38,
                      child: Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.add, color: Colors.white),
                                Text(
                                  "My List",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Toast.show("My List", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.CENTER);
                            },
                          ),
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.thumb_up, color: Colors.white),
                                Text(
                                  "Like",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Toast.show("Like", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.CENTER);
                            },
                          ),
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.share, color: Colors.white),
                                Text(
                                  "Share",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Toast.show("Share", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.CENTER);
                            },
                          ),
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.info, color: Colors.white),
                                Text(
                                  "info",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Toast.show("Info", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.CENTER);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 55,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 48,
                        icon: Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Toast.show("Play ${url['link']}", context);
                          Navigator.of(context).pushNamed('/play');
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  Widget artists(BuildContext cxt) {
    return Material(
        color: Colors.white,
        elevation: 14,
        shadowColor: Color(0x802196f3),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: labelContainer("Artists"),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: artistsInfo(),
            )
          ],
        ));
  }

// this function is the label above the horizontal scroll views
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

//the artists scroller view
  Widget artistsInfo() {
    return Container(

        height: 180.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://i.scdn.co/image/8d84f7b313ca9bafcefcf37d4e59a8265c7d3fff',
                'Never be like you',
                '4.1'),

            imageSection(
                'https://c1.staticflickr.com/2/1841/44200429922_d0cbbf22ba_b.jpg',
                'In the name of love',
                '4.6'),

            imageSection(
                'https://i.ytimg.com/vi/2kH4vOv7Lq0/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB9Et2WQTGC67va1hl1gAWmUTFuLQ',
                'Netflix',
                '4.8'),

            imageSection(
                'https://lh3.googleusercontent.com/F5B6GGdo6tAVNApr2X2p35igQhYBouuPA3uuIu3LEPHsIl7JPMHA1sn4-5J2B78JWA=s180-rw',
                'Flutter',
                '5.0'),

            imageSection(
                'https://lh3.googleusercontent.com/uOjFCUkQ4w56akZTg_AAGYsyiFd1UB3-Rd8KYDoiIpD05VzkTz647PO3B_2v9sPg2BM=s180-rw',
                'Pinterest',
                '4.9'),

            imageSection(
                'https://lh3.googleusercontent.com/aYbdIM1abwyVSUZLDKoE0CDZGRhlkpsaPOg9tNnBktUQYsXflwknnOn2Ge1Yr7rImGk=s180-rw',
                'Instagram',
                '4.8'),
          ],
        ));
  }

  Widget imageSection(String imageVal, String appVal, String rateVal) {
    return Card(
      elevation: 16,
      child: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(imageVal),
                fit: BoxFit.fill,
              ),
//            borderRadius: BorderRadius.circular(20.0),
              shape: BoxShape.circle
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                appVal,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                rateVal,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                FontAwesomeIcons.solidThumbsUp,
                size: 10.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
