import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// List Item dan Pembuatan Color Palete
List<String> allNames = [
  "Black Adam",
  "Adam Hitam",
  "Adam Tidak Hitam",
  "Adam Hitam Banget"
];
var mainColor = Color(0xff1B3954);
var textColor = Color(0xff727272);
var accentColor = Color(0xff16ADE1);
var whiteText = Color(0xffF5F5F5);

// Class SearchBar
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          showSearch(
            context: context,
            delegate: CustomSearchDelegate(),
          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromARGB(84, 0, 0, 0),
                blurRadius: 100,
                spreadRadius: 0,
              ),
            ],
          ),
          height: 41,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cari Film',
                style: TextStyle(color: Color(0xffB6B6B6)),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  var suggestion = ["Black Adam", "Adam Hitam", "Adam Hitam Banget"];
  List<String> searchResult = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchResult.clear();
    searchResult =
        allNames.where((element) => element.startsWith(query)).toList();
    return Container(
      margin: EdgeInsets.all(20),
      child: ListView(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          scrollDirection: Axis.vertical,
          children: List.generate(suggestion.length, (index) {
            var item = suggestion[index];
            return Card(
              color: Colors.white,
              child: Container(padding: EdgeInsets.all(16), child: Text(item)),
            );
          })),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? suggestion
        : allNames.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          if (query.isEmpty) {
            query = suggestion[index];
          }
        },
        leading: Icon(query.isEmpty ? Icons.movie_sharp : Icons.search),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: textColor),
              )
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
