import 'package:flutter/material.dart';

class ManageCategories extends StatefulWidget {
  final Widget child;

  ManageCategories({Key key, this.child}) : super(key: key);

  _ManageCategoriesState createState() => _ManageCategoriesState();
}

class _ManageCategoriesState extends State<ManageCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}