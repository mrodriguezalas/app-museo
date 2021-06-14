import 'package:flutter/material.dart';

class Identificacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(

            child: Text('Identificación'),
          )
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/images/background-huellas.png'),
                fit: BoxFit.cover
            )
        ),
        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: ListView(
            children: <Widget>[
              RaisedButton(
                child: Text('Pantalla de ID'),
                  onPressed: null)
            ]
        ),
      ),
    );
  }
}