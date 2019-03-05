import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tathastu/pages/bus-time-list/bus-time-list.dart';


class BusTrainCardComponent extends StatefulWidget {
  final Widget child;

  BusTrainCardComponent({Key key, this.child}) : super(key: key);

  _BusTrainCardComponentState createState() => _BusTrainCardComponentState();
}

class _BusTrainCardComponentState extends State<BusTrainCardComponent> {
  
  Widget itemCardIcon(String iconUrl){
    return Container(
    width: 56,
    height: 56,
    padding: EdgeInsets.all(8.0),
    child: new SvgPicture.asset(
      iconUrl,
    ),
  );
  }
  

  // cityText Widget
  Widget itemCardText(String title, String subTitle){
    return Container(
    child: new Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            new Text(subTitle),
          ],
        )),
  );
  }
  

  @override
  Widget build(BuildContext context) {
    return buildItemCard();
  }

  Widget buildItem(String iconUrl, String title, String subTitle, double size, BoxDecoration boxDecoration){
    return InkWell(
          onTap: () {
        print('bus train clicked');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BusTimeListPage()),
          );
      },
          child: Container(
            width: size,
            decoration: boxDecoration,
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                itemCardIcon(iconUrl),
                Expanded(
                  // flex: 1,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[itemCardText(title, subTitle)],
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget buildItemCard() {
    double size = MediaQuery.of(context).size.width / 2 - 16;

    var boxDecoration = BoxDecoration(
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
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildItem('assets/icons/bus.svg', 'Bus Time', 'GSRTC', size, boxDecoration),
        buildItem('assets/icons/train.svg', 'Train Time', 'Railway', size, boxDecoration)
        
      ],
    );
  }
}
