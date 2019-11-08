import 'package:flutter/material.dart';
import 'package:msingi/pages/home.dart';
import 'package:msingi/pages/learn_shapes.dart';
import 'package:msingi/pages/single_shape.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/learn': (context) => Learn(),
        '/detail': (context) => Shape()
      },
    ));
