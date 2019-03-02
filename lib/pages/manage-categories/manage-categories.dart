import 'package:flutter/material.dart';

class ManageCategoriesPage extends StatefulWidget {
  final Widget child;

  ManageCategoriesPage({Key key, this.child}) : super(key: key);

  _ManageCategoriesPageState createState() => _ManageCategoriesPageState();
}

class _ManageCategoriesPageState extends State<ManageCategoriesPage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Manage Categories',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: TabBar(
              indicatorColor: Colors.black,
              controller: controller,
              tabs: <Widget>[
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.add,color: Colors.black,),
                      Text('Add',style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.edit ,color: Colors.black,),
                      Text('Update',style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.delete ,color: Colors.black,),
                      Text('Delete',style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
              ],
            ),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody(){
    return TabBarView(
            controller: controller,
            children: <Widget>[
              categoryAddForm(),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.deepPurple,
              )
            ],
          );
  }




  Widget categoryAddForm(){
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Form(
        // key: addCategoryFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(),
                    // icon: Icon(Icons.message),
                    hintText: 'Category Name',
                    labelText: 'Name',
                  ),
                  maxLength: 6,
                  style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  // validator: OtpValidator.validate,
                  onSaved: (value){},
                  
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Row(
                  children: <Widget>[
                    OutlineButton(
                      child: Text('SELECT ICON'),
                      onPressed: (){},
                      padding: EdgeInsets.all(16.0),
                    ),
                    // categoryTypeIconToAdd != null
                    //     ? Expanded(child: Text(basename(categoryTypeIconToAdd.path)))
                    //     : Container(),
                  ],
                ),
              ),
              SizedBox(height: 16.0,),
              Container(
                margin: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: RaisedButton(
                  child: Text('ADD', style: TextStyle(color: Colors.white),),
                  color: Colors.black,
                  onPressed: (){},
                  padding: EdgeInsets.all(16.0),
                ),
              ),
          ],
        ),
      )
    );
  }


}