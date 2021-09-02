import 'package:app_mamiferos/main.dart';
import 'package:flutter/material.dart';

class Observacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(

            child: Text('Añadir Observación'),
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
        child: Expanded(

        child:
        ListView(
          padding: EdgeInsets.all(8.0),
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Georeferencia: País, Cantón, Distrito',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Descripción de localidad',
                    border: OutlineInputBorder()
                ),
              ),SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Coordenadas (automático)',
                    border: OutlineInputBorder()
                ),
              ),SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Altitud',
                    border: OutlineInputBorder()
                ),
              ),SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Recolector(es)',
                    border: OutlineInputBorder()
                ),
              ),SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Fecha',
                    border: OutlineInputBorder()
                ),
              ),SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Hábitad',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Área protegida',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Metodología',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Taxón',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Reino',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Filo',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Subfilo',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Clase',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Subclasse',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Orden',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Suborden',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(fillColor: Colors.white,
                    filled: true,
                    labelText: 'Superfamilia',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(fillColor: Colors.white,
                    filled: true,
                    labelText: 'Familia',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Categoría',
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 16.0,),
              ElevatedButton(

                  child: Text('Añadir observación'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Observación añadida para enviar')));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ]
        ),
    )
      ),
    );
  }
}