import 'package:flutter/material.dart';
import 'package:tathastu/pages/home/home-page.dart';

class RootPage extends StatefulWidget {
  final Widget child;

  RootPage({Key key, this.child}) : super(key: key);

  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  

  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}