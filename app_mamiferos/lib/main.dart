import 'package:app_mamiferos/catalogo.dart';
import 'package:app_mamiferos/identificacion.dart';
import 'package:app_mamiferos/observacion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {

  Future<void>? _launched;
  String _launchUrl = 'https://gogetfunding.com/?p=7314856';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Center(
              child: Text(
                  AppLocalizations.of(context)!.home),
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
                        horizontal: 64,
                        vertical: 16
                    ),
                    alignment: MainAxisAlignment.center,
                    buttonMinWidth: 288,
                    overflowDirection: VerticalDirection.up,
                    overflowButtonSpacing: 32,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RaisedButton.icon(
                        label: Text(
                            AppLocalizations.of(context)!.credits
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: () => showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(4)
                            )
                          ),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => buildCreditSheet(context)),
                        icon: Icon(Icons.favorite),
                      ),
                      RaisedButton.icon(
                        label: Text(
                            AppLocalizations.of(context)!.links
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: () => showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(4)
                                )
                            ),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => buildLinkSheet(context)),
                        icon: Icon(Icons.link),
                      ),
                      RaisedButton.icon(
                        padding: EdgeInsets.all(8.0),
                        label: Text(
                            AppLocalizations.of(context)!.observation),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToObservacion(context);
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      RaisedButton.icon(
                        padding: EdgeInsets.all(8.0),
                        label: Text(
                            AppLocalizations.of(context)!.identification),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToIdentificacion(context);
                        },
                        icon: Icon(Icons.search),
                      ),
                      RaisedButton.icon(
                        padding: EdgeInsets.all(8.0),
                        label: Text(
                          AppLocalizations.of(context)!.catalogue),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: (){
                          navigateToCatalogo(context);
                        },
                        icon: Icon(Icons.photo_album),
                      ),
                    ],
                  ),
                  ])
                ])));
  }

  Widget buildCreditSheet(BuildContext context) => Container(
      padding: EdgeInsets.all(16),
      child:Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Desarrollo:\nMauricio Rodríguez Alas, estudiante Ingeniería del Software\nUniversidad Latina de Costa Rica\n\n'
      + 'Especialista:\n Francisco J. Durán\nMastozoología-Vertebrados\nDpto. Historia Natural\nMuseo Nacional de Costa Rica\n\n'
      + 'Concepto y revisión:\nCecilia Pineda Calles, Bióloga\nSilvia  E. Bolaños, Bióloga\nFrancisco J. Durán, Biólogo\nDpto. Historia Natural\n Museo Nacional de Costa Rica\n\n'
      + 'Ilustraciones:\nLisa Sánchez Aguilar\n\n'
      + '2021', style: TextStyle(fontSize: 16),),
      Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            textStyle: TextStyle(color: Colors.white)
          ),
          child: Text('Close'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    ],
  ));

  Widget buildLinkSheet(BuildContext context) => Container(
      padding: EdgeInsets.all(16),
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Link(uri: Uri.parse('https://www.museocostarica.go.cr/'),
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: Text('National Museum of Costa Rica Webpage\n\n',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline
                ),),
              )),
          Link(uri: Uri.parse('https://www.museocostarica.go.cr/divulgacion/publicaciones/guia-huellas-de-mamiferos-del-acc/'),
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: Text('Free PDF Guide with Mammal Footprints from the Central Convervation Areas',
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline
                  ),),
              )),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(color: Colors.white)
              ),
              child: Text('Close'),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ));
}

Future navigateToCatalogo(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FilterCatalogo()));
}

Future navigateToObservacion(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Observacion()));
}

Future navigateToIdentificacion(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Identificacion()));
}
