import 'package:app_mamiferos/main.dart';
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
          const snackBar = SnackBar(content: Text("Observaciones enviadas correctamente"));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
}