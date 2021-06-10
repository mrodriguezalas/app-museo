import 'package:app_mamiferos/catalogo.dart';
import 'package:app_mamiferos/identificacion.dart';
import 'package:app_mamiferos/observacion.dart';
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  ButtonBar(
                    buttonPadding:EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16
                    ),
                    alignment: MainAxisAlignment.center,
                    buttonMinWidth: 288,
                    overflowDirection: VerticalDirection.up,
                    overflowButtonSpacing: 32,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RaisedButton(
                        child: Text("Observación"),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToObservacion(context);
                        },
                      ),
                      RaisedButton(
                        child: Text("Identificación"),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToIdentificacion(context);
                        },
                      ),
                      RaisedButton(
                        child: Text("Catálogo"),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToCatalogo(context);
                        },
                      ),
                    ],
                  ),
                  ])
                ])));
  }
}

Future navigateToCatalogo(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Catalogo()));
}

Future navigateToObservacion(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Observacion()));
}

Future navigateToIdentificacion(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Identificacion()));
}
