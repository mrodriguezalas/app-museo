import 'package:app_mamiferos/catalogo.dart';
import 'package:app_mamiferos/identificacion.dart';
import 'package:app_mamiferos/observacion.dart';
import 'package:flutter/material.dart';
import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  /*Future <void> _launchURL(String url) async{
    if (await canLaunch(url))
  }*/

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
                        label: Text('Donate now'),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.orange,
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
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
