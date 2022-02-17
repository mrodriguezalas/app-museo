import 'package:flutter/material.dart';
import 'data/animal_data.dart';
import 'model/animal.dart';
import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AnimalDetails extends StatelessWidget {
  final Animal animal;

  AnimalDetails(this.animal);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
          title: Center(

            child: Text(animal.nombre.toString()),
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
              children: <Widget>[ Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Wrap(children: <Widget>[Text(animal.nombreCientifico.toString(), style: TextStyle(fontSize: 24.0),)]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(animal.texto1.toString(), style: TextStyle(fontSize: 16.0, height: 1.4)),
                      ),
                      Row(children: <Widget>[ Expanded(child: Image.asset(animal.imagen.toString(),width: 300, height: 250))]),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(animal.texto2.toString(), style: TextStyle(fontSize: 16.0, height: 1.4),),
                      ),
                      Row(children: <Widget>[Expanded(child: Image.asset(animal.huella.toString(),width: 300, height: 200,))]),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(animal.texto3.toString(), style: TextStyle(fontSize: 16.0, height: 1.4),),
                      ),

                    ],
                  )
              ),
            ]
            ),
                ),
    );
  }
}