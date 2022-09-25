import 'dart:math';

import 'package:app_mamiferos/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:app_mamiferos/db/notes_database.dart';
import 'package:app_mamiferos/model/note.dart';
import 'package:app_mamiferos/page/edit_note_page.dart';
import 'package:app_mamiferos/page/note_detail_page.dart';
import 'package:app_mamiferos/widget/note_card_widget.dart';

class Observacion extends StatefulWidget {
  @override
  _ObservacionPageState createState() => _ObservacionPageState();
}

class _ObservacionPageState extends State<Observacion> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState(){
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState( () => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState( () => isLoading = false);
  }

  Future deleteSentNote(id) async {
    setState( () => isLoading = true);

    await NotesDatabase.instance.delete(id);

    setState( () => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: Text(
        'Observaciones',
        style: TextStyle(fontSize: 24),
      ),
    ),
    body: Center(
      child: isLoading
      ? CircularProgressIndicator()
      : notes.isEmpty
      ? Text(
        'No hay observaciones',
        style: TextStyle(color: Colors.black, fontSize: 24),
      )
      : buildNotes(),
    ),
    floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      notes.isNotEmpty ?
      FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.send),
        onPressed: () async {

          for(var note in notes){
            print(note.title);
            createObservacion(note);
            deleteSentNote(note.id);
          }
          refreshNotes();
        },
      ) : FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.send),
        onPressed: () async {
          const snackBar = SnackBar(content: Text("No hay observaciones para enviar"));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);

        },
      ),
      SizedBox(height: 8,),
      FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddEditNotePage()),
          );
          refreshNotes();
        },
      ),
    ]
    ),

  );

  Widget buildNotes() => StaggeredGridView.countBuilder(
    padding: EdgeInsets.all(8),
    itemCount: notes.length,
    staggeredTileBuilder: (index) => StaggeredTile.fit(2),
    crossAxisCount: 4,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    itemBuilder: (context, index) {
      final note = notes[index];

      return GestureDetector(
        onTap: () async {
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteDetailPage(noteId: note.id!),
      ));

          refreshNotes();
      },
        child: NoteCardWidget(note: note, index: index),
      );
    },
  );

  Future createObservacion(Note observacion) async{
    final docUser = FirebaseFirestore.instance.collection('observaciones_funcionarios').doc(Random().nextInt(10000).toString() + Random().nextInt(10000).toString());

    final note = Note(
      id: int.parse(docUser.id),
      createdTime: DateTime.now(),
      title: observacion.title,
      description: observacion.description,
      paisCantonDistrito: observacion.paisCantonDistrito,
      coordenadas: observacion.coordenadas,
      altitud: observacion.altitud,
      recolectores: observacion.recolectores,
      habitat: observacion.habitat,
      areaProtegida: observacion.areaProtegida,
      metodologia: observacion.metodologia,
      taxon: observacion.taxon,
      reino: observacion.reino,
      filo: observacion.filo,
      subfilo: observacion.subfilo,
      clase: observacion.clase,
      subclase: observacion.subclase,
      orden: observacion.orden,
      suborden: observacion.suborden,
      superfamilia: observacion.superfamilia,
      familia: observacion.familia,
      categoria: observacion.categoria
    );

    final json = note.toJson();

    //Write data to firebase
      await docUser.set(json);
      const snackBar = SnackBar(content: Text("1 observación enviada correctamente"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      /*const failSnackBar = SnackBar(content: Text("No hay conexión, intente más tarde"));
      ScaffoldMessenger.of(context).showSnackBar(failSnackBar);*/
  }
}