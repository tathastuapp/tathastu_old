import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactDetailsPage extends StatefulWidget {
  final Widget child;

  ContactDetailsPage({Key key, this.child}) : super(key: key);

  _ContactDetailsPageState createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Contact Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 24.0,
            ),
            onPressed: () {},
          )
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
        buildPhotoBox(),
        buildContactBox(),
      ],
    );
  }

  buildPhotoBox() {
    return Container(
      height: 200.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
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
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(8.0),
        child: Image.asset('assets/images/profile.jpg', fit: BoxFit.cover,)),
    );
  }

  buildContactBox() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
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
      child: buildContactDetailsItemList(),
    );
  }

  buildContactDetailsItemList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildContactDetailsTitle(),
        buildContactDetailsItem('assets/icons/phone.svg', '+91-9408393331'),
        buildContactDetailsItem('assets/icons/email.svg', 'ketul.rastogi@gmail.com'),
        buildContactDetailsItem('assets/icons/map.svg', '28-29, Krushnapark Society, Unjha 3 Rasta, Hansapur, Patan'),
        buildContactDetailsItem('assets/icons/internet.svg', 'www.ketulrastogi.com'),
        buildContactDetailsItem('assets/icons/clock.svg', '09:00AM TO 07:00PM (Sunday - Closed)'),
      ],
    );
  }


  buildContactDetailsTitle(){
    return Container(
      // child: Center(
        child: Text('Ketul Rastogi', style: TextStyle(
          fontSize: 28.0,
          color: Colors.black87,
          fontWeight: FontWeight.bold
        ),
        // ),
      ),
    );
  }

  buildContactDetailsItem(String iconUrl, String text) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 40.0,
            width: 40.0,
            padding: EdgeInsets.only(right:8.0),
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.black, width: 1.0))
            ),
            margin: EdgeInsets.only(top: 8.0, left: 0.0, right: 8.0, bottom:8.0),
            child: SvgPicture.asset(iconUrl),
            ),
          Container(
            
            child: Expanded(
                          child: Text(text, style: TextStyle(
                fontSize: 20.0,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
