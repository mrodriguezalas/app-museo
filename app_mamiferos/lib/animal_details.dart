import 'package:flutter/material.dart';
import 'animal_data.dart';

class AnimalDetails extends StatelessWidget {
  final int index;
  var animalData = AnimalData.getData;

  AnimalDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
          title: Center(

            child: Text(animalData[index]['nombre']),
          )
      ),
      body: Container(
        width: double.maxFinite,
        height: 600,
        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: ListView(
              children: <Widget>[ Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Row(children: <Widget>[Text(animalData[index]['nombreCientifico'], style: TextStyle(fontSize: 24.0),)]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(animalData[index]['texto1'], style: TextStyle(fontSize: 16.0, height: 1.4)),
                      ),
                      Row(children: <Widget>[ Expanded(child: Image.asset(animalData[index]['imagen'],width: 300, height: 250))]),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(animalData[index]['texto2'], style: TextStyle(fontSize: 16.0, height: 1.4),),
                      ),
                      Row(children: <Widget>[Expanded(child: Image.asset(animalData[index]['huella'],width: 300, height: 200,))]),


                    ],
                  )
              ),
            ]
            ),
                ),
    );
  }
}