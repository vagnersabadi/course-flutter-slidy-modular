import 'package:course_flutter_slidy_modular/app/pages/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OtherPage extends StatefulWidget {

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  final homeController = Modular.get<HomeController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Center(child: Text(homeController.text)),
    );
  }
}
