import 'package:flutter/material.dart';
import 'animal_details.dart';
import 'animal_data.dart';

class Catalogo extends StatelessWidget {
  // This widget is the root of your application.
  var animalData = AnimalData.getData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
              backgroundColor: Colors.orange,
              actions: [IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: null)],
              title:
              Center(
                child: Text('Catálogo'),
              ),
            leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/images/background-huellas.png'),
                    fit: BoxFit.cover
                )
            ),
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
                          height: 240,
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
                                        child: Wrap(
                                            children: <Widget>[ Column(children: <Widget>[
                                              animalPhotoFootprint(animalData[index]),
                                              Row(children: <Widget>[
                                                animalName(animalData[index]),
                                                Spacer(),
                                                IconButton(
                                                    constraints: BoxConstraints(),
                                                    iconSize: 24,
                                                    icon: new Icon(Icons.arrow_forward, color: Colors.orange),
                                                    onPressed: (){
                                                      navigateToDetail(context, index);
                                                      /*Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => AnimalDetails(index)),
                                                      );*/
                                                    }
                                                ),

                                              ]),
                                              Row(
                                                children: <Widget>[scientificName(animalData[index])],
                                              )
                                            ]),
                                            ]
                                        ),
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
        Expanded(child: Image.asset(data['imagen'],
          width: 130, height: 130,
        ),),
        Expanded(child: Image.asset(data['huella'],
          width: 130,
        ))
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

  Widget scientificName(data) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(data['nombreCientifico']));
  }

}

Future navigateToDetail(context, index) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalDetails(index)));
}

