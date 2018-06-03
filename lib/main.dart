import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'models/cart.dart';

void main() {
  final store = new Store<int>(counterReducer, initialState: 0);

  runApp(new MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<int> store;
  MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Jose Guillermo Gomez",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                "Full Stack Developer",
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
      child: new Text(
          "Estudiante de Ingenieria de Software, en la universidad APEC. Actualmente trabajo como desarrollador full stack en la compañia Truck Driver Power Inc. Utilizando tecnologias como React-Native, Ruby on Rails, GraphQL, Relay & Redux.",
          softWrap: true),
    );

    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My flutter App",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("My flutter App"),
            ),
            body: new ListView(
              children: <Widget>[
                new Image.asset('images/me.jpeg',
                    width: 600.0, height: 350.0, fit: BoxFit.cover),
                titleSection,
                textSection
              ],
            )),
        theme: new ThemeData(primaryColor: Colors.green));
  }
}
