import 'package:course_flutter_slidy_modular_3/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setText,
        ),
        actions: <Widget>[
          Observer(
            builder: (_) {
              return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: controller.text.isEmpty ? null : controller.save);
            },
          )
        ],
      ),
      body: Observer(builder: (_) {
         return ListView.builder(
           itemCount: controller.list.length,
           itemBuilder: (_,index){
             return ListTile(
               title: Text(controller.list[index]),
               trailing: IconButton(icon: Icon(Icons.cancel, color: Colors.red), onPressed: (){
                 controller.remove(index);
               }),
             )
           });
      },
      )
    );
  }
}
