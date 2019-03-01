import 'package:flutter/material.dart';

class CategoryListPage extends StatefulWidget {
  final Widget child;

  CategoryListPage({Key key, this.child}) : super(key: key);

  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}