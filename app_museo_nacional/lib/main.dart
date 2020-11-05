import 'package:flutter/material.dart';
import 'animal_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var animalData = AnimalData.getData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: animalData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 220,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerRight,
                                child: Stack(children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5, right: 9),
                                    child: Column(children: <Widget>[
                                      animalPhotoFootprint(animalData[index]),
                                      Row(children: <Widget>[
                                        animalName(animalData[index]),
                                          Spacer(),
                                          arrowIcon(),



                                      ]),
                                      Row(
                                        children: <Widget>[scientificName(animalData[index])],
                                      )
                                    ]),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }

  Widget animalPhotoFootprint(data) {
    return Row(
      children: [
        Image.asset(data['imagen'],
          width: 180, height: 130,
        ),
        Image.asset(data['huella'],
          width: 170,
        )
      ],
    );
  }

  Widget animalName(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(data['nombre'],
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Widget arrowIcon() {
    return Icon(
              Icons.arrow_forward,
              color: Colors.orange,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
          );
  }

  Widget scientificName(data) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(data['nombreCientifico']));
  }
}
