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
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.orange,
      child: Icon(Icons.add),
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AddEditNotePage()),
        );
        refreshNotes();
      },
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

 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(

            child: Text('Añadir Observación'),
          )
      ),
      body:
          Container(
          width: double.maxFinite,
    height: double.maxFinite,
    decoration: BoxDecoration(
    image: new DecorationImage(
    image: new AssetImage('assets/images/background-huellas.png'),
    fit: BoxFit.cover
    )
    ),
    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
    child: Text("Observaciones"))
    );
  }
}
*/
/*
Container(
width: double.maxFinite,
height: double.maxFinite,
decoration: BoxDecoration(
image: new DecorationImage(
image: new AssetImage('assets/images/background-huellas.png'),
fit: BoxFit.cover
)
),
padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//child: Expanded(

child:
ListView(
padding: EdgeInsets.all(8.0),
children: <Widget>[
TextField(
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
labelText: 'País, Cantón, Distrito',
border: OutlineInputBorder()
),
),
SizedBox(height: 16.0,),
TextField(
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
labelText: 'Descripción de localidad', //description
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
labelText: 'Fecha', //createdTime
border: OutlineInputBorder()
),
),SizedBox(height: 16.0,),
TextField(
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
labelText: 'Hábitat',
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
labelText: 'Subclase',
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
//)
),*/