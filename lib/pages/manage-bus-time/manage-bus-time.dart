import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:intl/intl.dart';

class ManageBusTimePage extends StatefulWidget {
  final Widget child;

  ManageBusTimePage({Key key, this.child}) : super(key: key);

  _ManageBusTimePageState createState() => _ManageBusTimePageState();
}

class _ManageBusTimePageState extends State<ManageBusTimePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };

  // Changeable in demo
  InputType inputType = InputType.time;
  bool editable = true;
  DateTime date;
  var timeFormat12Hr = new DateFormat('HH:mm');
  

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
          'Manage Bus Time',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[],
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
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  Text(
                    'Update',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                  Text(
                    'Delete',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
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

  Widget categoryAddForm() {
    return Container(
        padding: EdgeInsets.all(24.0),
        child: Form(
          // key: addCategoryFormKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: DateTimePickerFormField(
              inputType: inputType,
              format: formats[inputType],
              editable: editable,
              decoration: InputDecoration(
                  labelText: 'Date/Time', hasFloatingPlaceholder: false),
              onChanged: (dt) {
                 setState(() => date = dt);
                 print(timeFormat12Hr.format(dt));
                 print(dt);
              }
            ),
              ),
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
                    hintText: 'Source Station',
                    labelText: 'Source',
                  ),
                  style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  // validator: OtpValidator.validate,
                  onSaved: (value) {},
                ),
              ),
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
                    hintText: 'Destination Station',
                    labelText: 'Destination',
                  ),
                  style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  // validator: OtpValidator.validate,
                  onSaved: (value) {},
                ),
              ),
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
                    hintText: 'Bus Station',
                    labelText: 'Bus Station',
                  ),
                  style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  // validator: OtpValidator.validate,
                  onSaved: (value) {},
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  margin: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey[100],
                        blurRadius: 20.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                child: FlatButton(
                  child: Text('Add'),
                  onPressed: (){},
                ),),
            ],
          ),
        ));
  }
}
