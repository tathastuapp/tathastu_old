import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManageAccountPage extends StatefulWidget {
  final Widget child;

  ManageAccountPage({Key key, this.child}) : super(key: key);

  _ManageAccountPageState createState() => _ManageAccountPageState();
}

class _ManageAccountPageState extends State<ManageAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Account',
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
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        buildItemCard('assets/icons/document.svg','Categories'),
        buildItemCard('assets/icons/web-page.svg', 'Customers'),
        buildItemCard('assets/icons/newspaper.svg', 'Newspapers'),
        buildItemCard('assets/icons/sale.svg', 'Offers'),
        buildItemCard('assets/icons/bus.svg', 'Bus Time'),
        buildItemCard('assets/icons/train.svg', 'Train Time'),
        buildItemCard('assets/icons/cityscape.svg', 'City Guide'),
      ],
    );
  }

  buildItemCard(String iconUrl, String title) {
    // double height =MediaQuery.of(context).size.height/2 -24;
    double width = MediaQuery.of(context).size.width / 2 - 24;
    return Container(
      height: 80.0,
      width: width,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical:8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey[100],
            blurRadius: 20.0,
            spreadRadius: 1.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 48,
            height: 48,
            margin: EdgeInsets.all(8.0),
            child: new SvgPicture.asset(
              iconUrl
            ),),
          Container(child: Text(title, style: TextStyle(fontSize: 20.0),)),
        ],
      ),
    );
  }
}
