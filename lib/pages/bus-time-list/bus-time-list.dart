import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BusTimeListPage extends StatefulWidget {
  final Widget child;

  BusTimeListPage({Key key, this.child}) : super(key: key);

  _BusTimeListPageState createState() => _BusTimeListPageState();
}

class _BusTimeListPageState extends State<BusTimeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Bus Time Table',
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
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '09:25',
            'PATAN - AHMEDABAD',
            'Balaji Party Plot',
            'Unjha - Mehsana - Kalol',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '11:41',
            'UNJHA - NADABET',
            'Balaji Party Plot',
            'Harij - Radhanpur - Sami - Bhabhar - Suigam',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '14:20',
            'DEODAR - SURAT',
            'Balaji Party Plot',
            'Unjha - Mehsana - Ahmedabad - Baroda',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '09:25',
            'PATAN - AHMEDABAD',
            'Balaji Party Plot',
            'Unjha - Mehsana - Kalol',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '11:41',
            'UNJHA - NADABET',
            'Balaji Party Plot',
            'Harij - Radhanpur - Sami - Bhabhar - Suigam',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '14:20',
            'DEODAR - SURAT',
            'Balaji Party Plot',
            'Unjha - Mehsana - Ahmedabad - Baroda',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '09:25',
            'PATAN - AHMEDABAD',
            'Balaji Party Plot',
            'Unjha - Mehsana - Kalol',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '11:41',
            'UNJHA - NADABET',
            'Balaji Party Plot',
            'Harij - Radhanpur - Sami - Bhabhar - Suigam',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '14:20',
            'DEODAR - SURAT',
            'Balaji Party Plot',
            'Unjha - Mehsana - Ahmedabad - Baroda',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '09:25',
            'PATAN - AHMEDABAD',
            'Balaji Party Plot',
            'Unjha - Mehsana - Kalol',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '11:41',
            'UNJHA - NADABET',
            'Balaji Party Plot',
            'Harij - Radhanpur - Sami - Bhabhar - Suigam',
            false),
        buildBusTimeListItem(
            'assets/icons/clock.svg',
            '14:20',
            'DEODAR - SURAT',
            'Balaji Party Plot',
            'Unjha - Mehsana - Ahmedabad - Baroda',
            false),
      ],
    );
  }

  Widget buildBusTimeListItem(String iconUrl, String time, String name,
      String landmark, String timing, bool isPremium) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey[100],
            blurRadius: 20.0,
            spreadRadius: 1.0,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(8.0),
                            // border: Border.all(color: Colors.grey[300],width: 1.0),
                            ),
                        height: 40.0,
                        width: 40.0,
                        padding: EdgeInsets.all(8.0),
                        child: SvgPicture.asset(iconUrl)),
                    Container(
                        child: Text(
                      time,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey[850]),
                    )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Text(
                        name,
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[850], fontWeight: FontWeight.w600),
                      )),
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
          isPremium
              ? Container(
                  height: 48.0,
                  width: 48.0,
                  child: SvgPicture.asset('assets/icons/medal.svg'),
                )
              : Container(),
        ],
      ),
    );
  }
}
