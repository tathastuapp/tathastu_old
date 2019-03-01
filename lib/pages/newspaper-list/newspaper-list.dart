import 'package:flutter/material.dart';

class NewspaperListPage extends StatefulWidget {
  final Widget child;

  NewspaperListPage({Key key, this.child}) : super(key: key);

  _NewspaperListPageState createState() => _NewspaperListPageState();
}

class _NewspaperListPageState extends State<NewspaperListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newspaper List'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          buildNewspaperCard('assets/logo/sandesh.png'),
          SizedBox(height: 16.0,),
          buildNewspaperCard('assets/logo/gujaratsamachar.png'),
          SizedBox(height: 16.0,),
          buildNewspaperCard('assets/logo/divyabhaskar.png'),
        ],
      ),
    );
  }

  Widget buildNewspaperCard(String logoUrl){
    return Container(
          padding: EdgeInsets.only(left:24.0,right: 24.0, top:8.0, bottom: 8.0),
          decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey[100],
                        blurRadius: 32.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  height: 100.0,
                  
          child: Image.asset(logoUrl, height: 50.0,fit: BoxFit.contain,),
            
        );
  }
}