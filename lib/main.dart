import 'package:flutter/material.dart';
import 'package:fullternavigation/new_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData( primarySwatch: Colors.amber),
      
      home: new HomePage(),
      routes: <String , WidgetBuilder>{
        "/a": (BuildContext context)=> new NewPage("new page"),
      }
      
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         title: new Text("Drawer App"),
      ),
      drawer: new Drawer(
         child:  new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                 accountName: Text("akash nevagi"),
                  accountEmail: Text("akashnevagi06@gmail.com"),
                   currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                       child: Text("king"),
                   ),
              ),
              new ListTile(
                 title: new Text("page one"),
                  trailing:  new Icon(Icons.arrow_upward),
                   onTap:() {
                   Navigator.of(context).pop();
                   Navigator.of(context).pushNamed("/a");
                   },
              ),
              new ListTile(
                 title: new Text("page two"),
                  trailing:  new Icon(Icons.arrow_back),
                   onTap:() {
                   Navigator.of(context).pop();
                   Navigator.of(context).pushNamed("/a");
                   },
              ),
              new  Divider(),
              new ListTile(
                 title: new Text("Close"),
                  trailing:  new Icon(Icons.close),
                  onTap: ()=> Navigator.of(context).pop(),
              )
            ],
         ),
      ),
      body: new Container(
        child:new Center(
         child: new Text("home pager"),
        ),
      ),
    );
  }
}