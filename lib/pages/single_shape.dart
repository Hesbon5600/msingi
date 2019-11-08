import 'package:flutter/material.dart';

class Shape extends StatefulWidget {
  @override
  _ShapeState createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text(data['title']),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/${data['image']}'),
              radius: 90.0,
            ),
          ),
          Divider(
            height: 60,
            color: Colors.black,
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.fromLTRB(15, 12, 2, 2),
            decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              data['description'],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
