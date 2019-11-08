import 'package:flutter/material.dart';
import 'package:msingi/services/shapes.dart';

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  List<ShapeDetail> shapes = [
    ShapeDetail(
        title: "Square",
        description:
            'A four-sided figure which is created by connecting 4 line segments. The line segments in the square are all of the equal lengths and they come together to form 4 right angles.',
        image: 'square.png',
        shortDesc:
            'A four-sided figure which is created by connecting 4 line segments...'),
    ShapeDetail(
        title: "Circle",
        description:
            'A circle which is another shape of geometry has no straight lines. It is rather a combination of curves that are all connected. In a circle, there are no angles to be found.',
        image: 'circle.png',
        shortDesc:
            'A circle which is another shape of geometry has no straight lines...'),
    ShapeDetail(
        title: "Rectangle",
        description:
            'Similar to a square, a rectangle is also created by connecting four line segments. However, the only difference between a square and a rectangle is that in a rectangle, there are two line segments which are longer than the other two line segments.',
        image: 'rectangle.png',
        shortDesc:
            'Similar to a square, a rectangle is also created by connecting four...'),
    ShapeDetail(
        title: "Triangle",
        description:
            'Triangle comprises three connected line segments. Unlike, a rectangle or a square, in a triangle, the angles can be of distinct measurements. They aren’t always the right angles',
        image: 'triangle.png',
        shortDesc: 'Triangle comprises three connected line segments...')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Learn shapes'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: shapes.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              height: 90,
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${shapes[index].image}'),
                    radius: 30,
                  ),
                  title: Text(shapes[index].title),
                  subtitle: Text(shapes[index].shortDesc),
                  trailing: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/detail',
                          arguments: {
                            'title': shapes[index].title,
                            'description': shapes[index].description,
                            'image': shapes[index].image,
                          });
                    },
                    child: Text('Details', style: TextStyle(fontSize: 12)),
                  )),
            ),
          );
        },
      ),
    );
  }
}
