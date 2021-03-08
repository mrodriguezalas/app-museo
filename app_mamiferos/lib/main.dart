import 'package:app_mamiferos/catalogo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Center(
              child: Text('Home'),
            )),
        body: Container(
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image:
                        new AssetImage('assets/images/background-huellas.png'),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: RaisedButton(
                      child: FlatButton(
                        child: Text('Catalogo'),
                        onPressed: () {
                          navigateToCatalogo(context);
                        },
                      ),
                    ),
                  )
                ])));
  }
}

Future navigateToCatalogo(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Catalogo()));
}
