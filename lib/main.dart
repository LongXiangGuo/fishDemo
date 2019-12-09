import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'entrance_page/page.dart';
import 'grid_page/page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return xxx();
  }
}

class xxx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'entrance_page': EntrancePage(),
        'grid_page': GridPage(),
      },
    );
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: routes.buildPage('entrance_page', null),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
    );
  }
}
