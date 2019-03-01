import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tathastu/pages/category-list/category-list.dart';

// cityGuideComponent Icon Widget
class CityGuideCardComponent extends StatelessWidget {
  final cityIcon = new Container(
    width: 56,
    height: 56,
    padding: EdgeInsets.all(8.0),
    child: new SvgPicture.asset(
      'assets/icons/cityscape.svg',
    ),
  );

  // cityText Widget
  final cityText = new Container(
    child: new Padding(
        padding: EdgeInsets.only(left: 18.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'City Guide & Information',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            new Text('Heritage Sites, History & More..'),
          ],
        )),
  );

  // cityArrow Icon Widget
  final cityArrow = new Container(
    width: 48,
    height: 48,
    padding: EdgeInsets.all(8.0),
    child: new SvgPicture.asset(
      'assets/icons/right-arrow.svg',
    ),
  );

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
        onTap: () {
          final snackBar = SnackBar(content: Text("Tap"));

          // Scaffold.of(context).showSnackBar(snackBar);
        //   Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => CategoryListPage()),
        // );
        },
        child: Container(
          padding: EdgeInsets.all(8.0),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              cityIcon,
              Expanded(
                flex: 1,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[cityText, cityArrow],
                ),
              ),
            ],
          ),
        ),
      );
  }
}