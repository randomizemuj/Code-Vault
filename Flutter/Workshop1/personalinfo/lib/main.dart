import 'package:flutter/material.dart';
import 'package:personalinfo/pages/home.dart';
import 'package:personalinfo/pages/projects.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/project': (context) => Projects(),
  },
));