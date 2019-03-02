import 'package:flutter/material.dart';
import 'package:tathastu/components/bus-train-card/bus-train-card.dart';
import 'package:tathastu/components/carousel-card/carousel-card.dart';
import 'package:tathastu/components/categories-card/categories-card.dart';
import 'package:tathastu/components/city-guide-card/city-guide-card.dart';
import 'package:tathastu/components/drawer-list/drawer-list.dart';
import 'package:tathastu/components/newspaper-card/newspaper-card.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Tathastu',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            // PopupMenuButton<String>(
            //   itemBuilder: (BuildContext context){
            //     return [PopupMenuItem<String>(
            //       value: 'Settings',
            //       child: Text('Settings'),
            //     ),
            //     PopupMenuItem<String>(
            //       value: 'Help',
            //       child: Text('Help'),
            //     )];
            //   },
            // ),
            
          ],
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: buildBody(),
        drawer: _buildDrawer(context),
      ),
    );
  }

  Drawer _buildDrawer(context) {
    return new Drawer(
      child: DrawerListComponent(),
    );
  }

  
  Widget buildBody(){
    return ListView(
      padding: EdgeInsets.all(8.0),
      
      children: <Widget>[
        CarouselCardComponent(),
        SizedBox(height: 16.0,),
        NewspaperCardComponent(),
        SizedBox(height: 16.0,),
        CategoriesCardComponent(),
        SizedBox(height: 16.0,),
        BusTrainCardComponent(),
        SizedBox(height: 16.0,),
        CityGuideCardComponent(),
        SizedBox(height: 16.0,),
        
      ],
    );
  }

}