import 'package:app_mamiferos/catalogo.dart';
import 'package:app_mamiferos/identificacion.dart';
import 'package:app_mamiferos/observacion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_mamiferos/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_mamiferos/widget/language_picker_widget.dart';
import 'package:app_mamiferos/provider/locale_provider.dart';
import 'onboarding.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(//{
    create: (context) => LocaleProvider(),
    builder: (context, child){
      final provider = Provider.of<LocaleProvider>(context);
      return MaterialApp(
        home: OnBoardingPage(),
        locale: provider.locale,
        supportedLocales: L10n.all,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      );
    }
  //}
  );
}

class HomeScreen extends StatelessWidget {

  Future<void>? _launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [LanguagePickerWidget()],
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
                      LanguageWidget(),
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
      + 'Especialista:\nFrancisco J. Durán\nMastozoología-Vertebrados\nDpto. Historia Natural\nMuseo Nacional de Costa Rica\n\n'
      + 'Concepto y revisión:\nCecilia Pineda Calles, Bióloga\nSilvia  E. Bolaños, Bióloga\nFrancisco J. Durán, Biólogo\nDpto. Historia Natural\nMuseo Nacional de Costa Rica\n\n'
      + 'Ilustraciones:\nLisa Sánchez Aguilar\n\n'
      + '2021-2022', style: TextStyle(fontSize: 16),),
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
                onTap: () async {
                  final urlMuseo = 'https://www.museocostarica.go.cr/';

                  openBrowserURL(url: urlMuseo, inApp: false);
                },
                child: Text('National Museum of Costa Rica Webpage\n\n',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline
                ),),
              )),
          Link(uri: Uri.parse('https://www.museocostarica.go.cr/divulgacion/publicaciones/guia-huellas-de-mamiferos-del-acc/'),
              builder: (context, followLink) => GestureDetector(
                onTap: () async {
                  final url = 'https://www.museocostarica.go.cr/divulgacion/publicaciones/guia-huellas-de-mamiferos-del-acc/';

                  openBrowserURL(url: url, inApp: false);
                },
                child: Text('Free PDF Guide with Mammal Footprints from the Central Convervation Areas\n\n',
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline
                  ),),
              )),
          Link(uri: Uri.parse('https://www.sinac.go.cr/ES/Paginas/default.aspx'),
              builder: (context, followLink) => GestureDetector(
                onTap: () async {
                  final urlSinac = 'https://www.sinac.go.cr/ES/Paginas/default.aspx';

                  openBrowserURL(url: urlSinac, inApp: false);
                },
                child: Text('Sistema Nacional de Áreas de Conservación\n\n',
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
  Future openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    if (await canLaunch(url)){
      await launch(
        url
      );
    }
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
