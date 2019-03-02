import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tathastu/pages/category-list/category-list.dart';
import 'package:tathastu/pages/contact-list/contact-list.dart';

class CategoryItemComponent extends StatelessWidget {
  final String iconUrl;
  final String categoryName;
  CategoryItemComponent(this.iconUrl, this.categoryName);

  

  @override
  Widget build(BuildContext context) {
    //...

    return new InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactListPage()),
        );
      },
      child: new Container(
        width: MediaQuery.of(context).size.width/5,
        padding: EdgeInsets.symmetric(vertical:16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              width: 40,
              height: 40, 
              // padding: EdgeInsets.all(4.0),
              child: new SvgPicture.asset(
                iconUrl,
              ),
            ),
            new Container(
              // padding: EdgeInsets.all(4.0),
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                categoryName,
                style: Theme.of(context).textTheme.body1
              ),
            ),
          ],
        ),
      ),
    );
  }
}