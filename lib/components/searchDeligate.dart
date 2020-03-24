import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{
  final artists = [
    "Nigusse Abadi",
    "Kiros Alemayo",
    "Helen Meles",
    "Nahom Meste",
    "Dawit Nega",
    "Selemawit Yohans",
    "Merkeb Bonita",
    "Selemon Haile",
    "Embza Tadesse",
    "Zemen Alemseged",
    "Efrem Amare",
    "Timnit Welday",
    "Shewit Mezgebo",
    "Danayt Yohans",
    "Yemane Barya",
    "Abrham Afwerki",
    "Robel Mendokon",
    "Mesfen Brhanu",
    "Selemon Ykunoamlak",
    "Teddy Afro",
    "Aster Aweke",
    "Zebiba Ahmed",
    "Kuku Sebsbe"
  ];
  final recentArtists=[
    "Nigusse Abadi",
    "Kiros Alemayo",
    "Helen Meles",
    "Nahom Meste",
    "Dawit Nega"
  ];
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentArtists:artists.where((p)=>p.toLowerCase().startsWith(query.toLowerCase())).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading: Icon(Icons.art_track),
      title: RichText(text:TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color: Colors.grey),
        ),]
      ),),
    ),
      itemCount: suggestionList.length,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear),onPressed: (){
        query = "";
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

  }
}