import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListComponent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        new DrawerHeader(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/photo.jpg'),
                    ),
                  ),
                ),
                new Text(
                  'Ketul Rastogi',
                  style: Theme.of(context).textTheme.title,
                ),
                new Text(
                  'ketul.rastogi@gmail.com',
                  style: Theme.of(context).textTheme.subtitle,
                )
              ],
            ),
          ),
          // decoration: new BoxDecoration(color: Colors.deepOrange),
        ),
        new ListTile(
          leading: Container(
            width: 32,
            height: 32,
            child: new SvgPicture.asset(
              'assets/icons/house.svg',
            ),
          ),
          title: new Text('Home'),
          onTap: () {
            print('Home Page');
          },
        ),
        new ListTile(
          leading: Container(
            width: 32,
            height: 32,
            child: new SvgPicture.asset(
              'assets/icons/boy.svg',
            ),
          ),
          title: new Text('About Us'),
          onTap: () {
            print('About Page');
          },
        ),
        new ListTile(
          leading: Container(
            width: 32,
            height: 32,
            child: new SvgPicture.asset(
              'assets/icons/contact.svg',
            ),
          ),
          title: new Text('Contact Us'),
          onTap: () {
            print('Contact Page');
          },
        ),
        new ListTile(
          leading: Container(
            width: 32,
            height: 32,
            child: new SvgPicture.asset(
              'assets/icons/key.svg',
            ),
          ),
          title: new Text('Disclaimer'),
          onTap: () {
            print('Disclaimer Page');
          },
        ),
        new ListTile(
          leading: Container(
            width: 32,
            height: 32,
            child: new SvgPicture.asset(
              'assets/icons/exit.svg',
            ),
          ),
          title: new Text('Logout'),
          onTap: () {
            print('Logout Page');
          },
        ),
        new Divider(
          color: Colors.black45,
          indent: 16.0,
        )
      ],
    );
  }
}