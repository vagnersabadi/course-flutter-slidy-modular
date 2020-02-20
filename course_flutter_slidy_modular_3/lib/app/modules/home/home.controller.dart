import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';


class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  
  @observable
  String text ='';

  @action
  setText(String value)=>text = value;

  ObserverList<String> list = <String>[].asObservable();
  

  @action
  void save(){
    list.add(text);
  }

  @action
  void remove(int index){
    list.removeAt(index);
  }

}