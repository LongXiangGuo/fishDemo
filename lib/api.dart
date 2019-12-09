

import 'model.dart';

class Api {
  static Api _instance;
  factory Api() {
    return _getInstance();
  }

  static _getInstance() {
    if (_instance == null) {
      _instance = new Api._internal();
    }
    return _instance;
  }

  Api._internal(){
    //init Api instance
  }

  // List<GridModel> getGridData() {
  //   return List<GridModel>.generate(
  //       10, (index) => GridModel(name: 'mode$index'));
  // }

  List<GridModel> getGridData() {
    return [
      GridModel(name: "第一块"),
      GridModel(name: "第二块"),
      GridModel(name: "第三块"),
      GridModel(name: "第四块"),
      GridModel(name: "第五块"),
      GridModel(name: "第六块"),
      GridModel(name: "第七块"),
      GridModel(name: "第八块"),
      GridModel(name: "第九块"),
      GridModel(name: "第十块"),
    ];
  }
}
