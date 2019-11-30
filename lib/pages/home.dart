import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Msingi'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 2),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/learn',
                      );
                    },
                    child: Container(
                      width: 137,
                      height: 137,
                      margin: const EdgeInsets.fromLTRB(0, 12, 2, 2),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/learn.png'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          Text(
                            'Learn',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 137,
                      height: 137,
                      margin: const EdgeInsets.fromLTRB(15, 12, 2, 2),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/excersice.jpg'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          Text(
                            'Excersice',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 137,
                      height: 137,
                      margin: const EdgeInsets.fromLTRB(0, 12, 2, 2),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/about.png'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          Text(
                            'About Msingi',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 137,
                      height: 137,
                      margin: const EdgeInsets.fromLTRB(15, 12, 2, 2),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/contact.png'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          Text(
                            'Contact us',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
