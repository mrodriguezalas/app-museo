import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'animal_details.dart';
import 'model/animal.dart';
import 'data/animal_data.dart';
import 'widget/search_widget.dart';
import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:io';

class FilterCatalogo extends StatefulWidget{

  @override
  CatalogoState createState() => CatalogoState();
}

class CatalogoState extends State<FilterCatalogo> {
  // This widget is the root of your application.
  late List<Animal> animals;
  String query = '';
  late String defaultLocale = Platform.localeName;


  @override
  void initState(){
    super.initState();

    animals = allAnimals;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
              backgroundColor: Colors.orange,
              //actions: [IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: null)],
              title:
              Center(
                child: Text(
                  AppLocalizations.of(context)!.catalogue),
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
                buildSearch(),
                Expanded(

                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: animals.length,
                      itemBuilder: (context, index) {
                        final animal = animals[index];

                        return buildAnimal(animal);
                      }),
                )
              ],
            ),
          )),
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
    text: query,
    hintText: AppLocalizations.of(context)!.searchAnimal,
    onChanged: searchAnimal,
  );

  Widget buildAnimal(Animal animal) {
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
                          animalPhotoFootprint(animal),
                          Row(children: <Widget>[
                            animalName(animal),
                            Spacer(),
                            IconButton(
                                constraints: BoxConstraints(),
                                iconSize: 24,
                                icon: new Icon(Icons.arrow_forward, color: Colors.orange),
                                onPressed: (){
                                  navigateToDetail(context, animal);
                                }
                            ),

                          ]),
                          Row(
                            children: <Widget>[scientificName(animal)],
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
    );;
  }

  Widget animalPhotoFootprint(data) {
    return Row(
      children: [
        Expanded(child: Image.asset(data.imagen,
          width: 130, height: 130,
        ),),
        Expanded(child: Image.asset(data.huella,
          width: 130,
        ))
      ],
    );
  }

  void searchAnimal(String query){
    final animals = allAnimals.where((animal) {
      final nombreComunLower = animal.nombre.toLowerCase();
      final searchLower = query.toLowerCase();

      return nombreComunLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.animals = animals;
    });
  }

  Widget animalName(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(data.nombre,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Widget scientificName(data) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(data.nombreCientifico));
  }

}

Future navigateToDetail(context, Animal animal) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalDetails(animal)));
}

