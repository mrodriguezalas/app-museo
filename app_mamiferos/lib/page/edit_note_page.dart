import 'package:flutter/material.dart';
import 'package:app_mamiferos/db/notes_database.dart';
import 'package:app_mamiferos/model/note.dart';
import 'package:app_mamiferos/widget/note_form_widget.dart';

class AddEditNotePage extends StatefulWidget {
  final Note? note;

  const AddEditNotePage({
    Key? key,
    this.note,
  }) : super(key: key);
  @override
  _AddEditNotePageState createState() => _AddEditNotePageState();
}

class _AddEditNotePageState extends State<AddEditNotePage> {
  final _formKey = GlobalKey<FormState>();
  late bool isImportant;
  late int number;
  late String title;
  late String description;
  late DateTime createdTime;
  late String paisCantonDistrito;
  late String coordenadas;
  late String altitud;
  late String recolectores;
  late String habitat;
  late String areaProtegida;
  late String metodologia;
  late String taxon;
  late String reino;
  late String filo;
  late String subfilo;
  late String clase;
  late String subclase;
  late String orden;
  late String suborden;
  late String superfamilia;
  late String familia;
  late String categoria;

  @override
  void initState() {
    super.initState();

    isImportant = widget.note?.isImportant ?? false;
    number = widget.note?.number ?? 0;
    title = widget.note?.title ?? '';
    description = widget.note?.description ?? '';
    paisCantonDistrito = widget.note?.paisCantonDistrito ?? '';
    coordenadas = widget.note?.coordenadas ?? '';
    altitud = widget.note?.altitud ?? '';
    recolectores = widget.note?.recolectores ?? '';
    habitat = widget.note?.habitat ?? '';
    areaProtegida = widget.note?.areaProtegida ?? '';
    metodologia = widget.note?.metodologia ?? '';
    taxon = widget.note?.taxon ?? '';
    reino = widget.note?.reino ?? '';
    filo = widget.note?.filo ?? '';
    subfilo = widget.note?.subfilo ?? '';
    clase = widget.note?.clase ?? '';
    subclase = widget.note?.subclase ?? '';
    orden = widget.note?.orden ?? '';
    suborden = widget.note?.suborden ?? '';
    superfamilia = widget.note?.superfamilia ?? '';
    familia = widget.note?.familia ?? '';
    categoria = widget.note?.categoria ?? '';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      actions: [buildButton()],
    ),
    body: Form(
      key: _formKey,
      child: NoteFormWidget(
        isImportant: isImportant,
        number: number,
        title: title,
        description: description,
        paisCantonDistrito: paisCantonDistrito,
        coordenadas: coordenadas,
        altitud: altitud,
        recolectores: recolectores,
        habitat: habitat,
        areaProtegida: areaProtegida,
        metodologia: metodologia,
        taxon: taxon,
        reino: reino,
        filo: filo,
        subfilo: subfilo,
        clase: clase,
        subclase: subclase,
        orden: orden,
        suborden: suborden,
        superfamilia: superfamilia,
        familia: familia,
        categoria: categoria,
        //onchanged variables
        onChangedImportant: (isImportant) =>
            setState(() => this.isImportant = isImportant),
        onChangedNumber: (number) => setState(() => this.number = number),
        onChangedTitle: (title) => setState(() => this.title = title),
        onChangedDescription: (description) =>
            setState(() => this.description = description),
        onChangepaisCantonDistrito: (paisCantonDistrito) =>
            setState(() => this.paisCantonDistrito = paisCantonDistrito),
        onChangeCoordenadas: (coordenadas) =>
            setState(() => this.coordenadas = coordenadas),
        onChangeAltitud: (altitud) =>
            setState(() => this.altitud = altitud),
        onChangeRecolectores: (recolectores) =>
            setState(() => this.recolectores = recolectores),
        onChangeHabitat: (habitat) =>
            setState(() => this.habitat = habitat),
        onChangeAreaProtegida: (areaProtegida) =>
            setState(() => this.areaProtegida = areaProtegida),
        onChangeMetodologia: (metodologia) =>
            setState(() => this.metodologia = metodologia),
        onChangeTaxon: (taxon) =>
            setState(() => this.taxon = taxon),
        onChangeReino: (reino) =>
            setState(() => this.reino = reino),
        onChangeFilo: (filo) =>
            setState(() => this.filo = filo),
        onChangeSubfilo: (subfilo) =>
            setState(() => this.subfilo = subfilo),
        onChangeClase: (clase) =>
            setState(() => this.clase = clase),
        onChangeSubclase: (subclase) =>
            setState(() => this.subclase = subclase),
        onChangeOrden: (orden) =>
            setState(() => this.orden = orden),
        onChangeSuborden: (suborden) =>
            setState(() => this.suborden = suborden),
        onChangeSuperfamilia: (superfamilia) =>
            setState(() => this.superfamilia = superfamilia),
        onChangeFamilia: (familia) =>
            setState(() => this.familia = familia),
        onChangeCategoria: (categoria) =>
            setState(() => this.categoria = categoria),
    ),
    )
  );

  Widget buildButton() {


    final isFormValid = title.isNotEmpty && description.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateNote,
        child: Text('Guardar'),
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.note != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final note = widget.note!.copy(
      isImportant: isImportant,
      number: number,
      title: title,
      description: description,
      //new variables
      paisCantonDistrito: paisCantonDistrito,
      coordenadas: coordenadas,
      altitud: altitud,
      recolectores: recolectores,
      habitat: habitat,
      areaProtegida: areaProtegida,
      metodologia: metodologia,
      taxon: taxon,
      reino: reino,
      filo: filo,
      subfilo: subfilo,
      clase: clase,
      subclase: subclase,
      orden: orden,
      suborden: suborden,
      superfamilia: superfamilia,
      familia: familia,
      categoria: categoria,
    );

    await NotesDatabase.instance.update(note);
  }

  Future addNote() async {
    final note = Note(
      title: title,
      isImportant: true,
      number: number,
      description: description,
      createdTime: DateTime.now(),
      //new variables
      paisCantonDistrito: paisCantonDistrito,
      coordenadas: coordenadas,
      altitud: altitud,
      recolectores: recolectores,
      habitat: habitat,
      areaProtegida: areaProtegida,
      metodologia: metodologia,
      taxon: taxon,
      reino: reino,
      filo: filo,
      subfilo: subfilo,
      clase: clase,
      subclase: subclase,
      orden: orden,
      suborden: suborden,
      superfamilia: superfamilia,
      familia: familia,
      categoria: categoria,
    );

    await NotesDatabase.instance.create(note);
  }
}