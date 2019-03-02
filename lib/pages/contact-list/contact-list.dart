import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tathastu/pages/contact-details/contact-details.dart';

class ContactListPage extends StatefulWidget {
  final Widget child;

  ContactListPage({Key key, this.child}) : super(key: key);

  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Contact List',
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
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          buildContactListItem('assets/icons/plumber.svg', 'Harsh Parikh',
                  'Soni wado', '08:00AM to 09:00PM', true),
              buildContactListItem('assets/icons/carpenter.svg', 'Sandip Mistry',
                  'Shitla Mata Chowk', '09:00AM to 06:00PM', true),
              buildContactListItem('assets/icons/boy.svg', 'Ketul Rastogi',
                  'Balaji Party Plot', '09:00AM to 04:30PM', true),
              buildContactListItem('assets/icons/plumber.svg', 'Harsh Parikh',
                  'Soni wado', '08:00AM to 09:00PM',true),
              buildContactListItem('assets/icons/carpenter.svg', 'Sandip Mistry',
                  'Shitla Mata Chowk', '09:00AM to 06:00PM', false),
              buildContactListItem('assets/icons/boy.svg', 'Ketul Rastogi',
                  'Balaji Party Plot', '09:00AM to 04:30PM',false),
              buildContactListItem('assets/icons/plumber.svg', 'Harsh Parikh',
                  'Soni wado', '08:00AM to 09:00PM', false),
              buildContactListItem('assets/icons/carpenter.svg', 'Sandip Mistry',
                  'Shitla Mata Chowk', '09:00AM to 06:00PM', false),
              buildContactListItem('assets/icons/boy.svg', 'Ketul Rastogi',
                  'Balaji Party Plot', '09:00AM to 04:30PM', false),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black,),
        backgroundColor: Colors.white,
        isExtended: true,
        onPressed: (){},
      ),
      
    );
  }

  Widget buildContactListItem(
      String iconUrl, String name, String landmark, String timing, bool isPremium) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactDetailsPage()),
        );
      },
          child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical:4.0),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(8.0),
                      // border: Border.all(color: Colors.grey[300],width: 1.0),
                      ),
                  height: 64.0,
                  width: 64.0,
                  padding: EdgeInsets.all(8.0),
                  child: SvgPicture.asset(iconUrl)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      name,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[850]),
                    )),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 20.0,
                            width: 20.0,
                            margin:
                                EdgeInsets.only(top: 2.0, right: 4.0, bottom: 2.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey[600],
                              size: 20.0,
                            ),
                          ),
                          Container(
                              child: Text(
                            landmark,
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 20.0,
                            width: 20.0,
                            margin:
                                EdgeInsets.only(top: 2.0, right: 4.0, bottom: 2.0),
                            child: Icon(
                              Icons.access_time,
                              color: Colors.grey[600],
                              size: 16.0,
                            ),
                          ),
                          Container(
                              child: Text(
                            timing,
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
              isPremium ? Container(
                height: 48.0,
                width: 48.0,
                child: SvgPicture.asset('assets/icons/medal.svg'),
              ):Container(),
            ],
        ),
      ),
          
    );
  }

}