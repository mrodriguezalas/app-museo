import 'package:flutter/material.dart';

class NoteFormWidget extends StatelessWidget {
  final bool? isImportant;
  final int? number;
  final String? title;
  final String? description;
  final String? paisCantonDistrito;
  final String? coordenadas;
  final String? altitud;
  final String? recolectores;
  final String? habitat;
  final String? areaProtegida;
  final String? metodologia;
  final String? taxon;
  final String? reino;
  final String? filo;
  final String? subfilo;
  final String? clase;
  final String? subclase;
  final String? orden;
  final String? suborden;
  final String? superfamilia;
  final String? familia;
  final String? categoria;
  //Value changed
  final ValueChanged<bool> onChangedImportant;
  final ValueChanged<int> onChangedNumber;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangepaisCantonDistrito;
  final ValueChanged<String> onChangeCoordenadas;
  final ValueChanged<String> onChangeAltitud;
  final ValueChanged<String> onChangeRecolectores;
  final ValueChanged<String> onChangeHabitat;
  final ValueChanged<String> onChangeAreaProtegida;
  final ValueChanged<String> onChangeMetodologia;
  final ValueChanged<String> onChangeTaxon;
  final ValueChanged<String> onChangeReino;
  final ValueChanged<String> onChangeFilo;
  final ValueChanged<String> onChangeSubfilo;
  final ValueChanged<String> onChangeClase;
  final ValueChanged<String> onChangeSubclase;
  final ValueChanged<String> onChangeOrden;
  final ValueChanged<String> onChangeSuborden;
  final ValueChanged<String> onChangeSuperfamilia;
  final ValueChanged<String> onChangeFamilia;
  final ValueChanged<String> onChangeCategoria;

  const NoteFormWidget({
    Key? key,
    this.isImportant = false,
    this.number = 0,
    this.title = '',
    this.description = '',
    this.paisCantonDistrito = '',
    this.coordenadas = '',
    this.altitud = '',
    this.recolectores = '',
    this.habitat = '',
    this.areaProtegida = '',
    this.metodologia = '',
    this.taxon = '',
    this.reino = '',
    this.filo = '',
    this.subfilo = '',
    this.clase = '',
    this.subclase = '',
    this.orden = '',
    this.suborden = '',
    this.superfamilia = '',
    this.familia = '',
    this.categoria = '',
    //on changed variables
    required this.onChangedImportant,
    required this.onChangedNumber,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onChangepaisCantonDistrito,
    required this.onChangeCoordenadas,
    required this.onChangeAltitud,
    required this.onChangeRecolectores,
    required this.onChangeHabitat,
    required this.onChangeAreaProtegida,
    required this.onChangeMetodologia,
    required this.onChangeTaxon,
    required this.onChangeReino,
    required this.onChangeFilo,
    required this.onChangeSubfilo,
    required this.onChangeClase,
    required this.onChangeSubclase,
    required this.onChangeOrden,
    required this.onChangeSuborden,
    required this.onChangeSuperfamilia,
    required this.onChangeFamilia,
    required this.onChangeCategoria,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Switch(
                value: isImportant ?? false,
                onChanged: onChangedImportant,
              ),
              Expanded(
                child: Slider(
                  value: (number ?? 0).toDouble(),
                  min: 0,
                  max: 5,
                  divisions: 5,
                  onChanged: (number) => onChangedNumber(number.toInt()),
                ),
              )
            ],
          ),
          buildTitle(),
          SizedBox(height: 8),
          buildDescription(),
          SizedBox(height: 16),
          buildPaisCantonDistrito(),
          SizedBox(height: 8),
          buildCoordenadas(),
          SizedBox(height: 8),
          buildAltitud(),
          SizedBox(height: 8),
          buildRecolectores(),
          SizedBox(height: 8),
          buildHabitat(),
          SizedBox(height: 8),
          buildAreaProtegida(),
          SizedBox(height: 8),
          buildMetodologia(),
          SizedBox(height: 8),
          buildTaxon(),
          SizedBox(height: 8),
          buildReino(),
          SizedBox(height: 8),
          buildFilo(),
          SizedBox(height: 8),
          buildSubFilo(),
          SizedBox(height: 8),
          buildClase(),
          SizedBox(height: 8),
          buildSubclase(),
          SizedBox(height: 8),
          buildOrden(),
          SizedBox(height: 8),
          buildSuborden(),
          SizedBox(height: 8),
          buildSuperfamilia(),
          SizedBox(height: 8),
          buildFamilia(),
          SizedBox(height: 8),
          buildCategoria(),
        ],
      ),
    ),
  );

  Widget buildTitle() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: title,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Título',
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (title) =>
    title != null && title.isEmpty ? 'El título no puede estar vacío' : null,
    onChanged: onChangedTitle,
  );

  Widget buildDescription() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 2,
    initialValue: description,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Descripción',
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'La descripción no puede estar vacía'
        : null,
    onChanged: onChangedDescription,
  );

  Widget buildPaisCantonDistrito() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: paisCantonDistrito,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'País, Provincia, Distrito',
      border: OutlineInputBorder(),
      /*hintText: 'País, Provincia, Distrito',
      hintStyle: TextStyle(color: Colors.black),*/
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'País, Provincia, Distrito no puede estar vacío'
        : null,
    onChanged: onChangepaisCantonDistrito,
  );

  Widget buildCoordenadas() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: coordenadas,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Coordenadas',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Error al obtener coordenadas'
        : null,
    onChanged: onChangeCoordenadas,
  );

  Widget buildAltitud() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: altitud,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Altitud',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'La altitud no puede estar vacía'
        : null,
    onChanged: onChangeAltitud,
  );

  Widget buildRecolectores() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: recolectores,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Recolector(es)',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Recolector(es) no puede estar vacío'
        : null,
    onChanged: onChangeRecolectores,
  );

  Widget buildHabitat() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: habitat,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Hábitat',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Hábitat no puede estar vacío'
        : null,
    onChanged: onChangeHabitat,
  );

  Widget buildAreaProtegida() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: areaProtegida,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Área protegida',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Área protegida no puede estar vacía'
        : null,
    onChanged: onChangeAreaProtegida,
  );

  Widget buildMetodologia() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: metodologia,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Metodología',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Metodología no puede estar vacía'
        : null,
    onChanged: onChangeMetodologia,
  );

  Widget buildTaxon() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: taxon,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Taxón',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Taxón no puede estar vacía'
        : null,
    onChanged: onChangeTaxon,
  );

  Widget buildReino() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: reino,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Reino',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Reino no puede estar vacío'
        : null,
    onChanged: onChangeReino,
  );

  Widget buildFilo() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: filo,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Filo',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Filo no puede estar vacío'
        : null,
    onChanged: onChangeFilo,
  );

  Widget buildSubFilo() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: subfilo,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Subfilo',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Subfilo no puede estar vacío'
        : null,
    onChanged: onChangeSubfilo,
  );

  Widget buildClase() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: clase,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Clase',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Clase no puede estar vacía'
        : null,
    onChanged: onChangeClase,
  );

  Widget buildSubclase() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: subclase,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Subclase',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Subclase no puede estar vacía'
        : null,
    onChanged: onChangeSubclase,
  );

  Widget buildOrden() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: orden,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Orden',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Orden no puede estar vacío'
        : null,
    onChanged: onChangeOrden,
  );

  Widget buildSuborden() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: suborden,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Suborden',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Suborden no puede estar vacío'
        : null,
    onChanged: onChangeSuborden,
  );

  Widget buildSuperfamilia() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: superfamilia,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Superfamilia',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Superfamilia no puede estar vacía'
        : null,
    onChanged: onChangeSuperfamilia,
  );

  Widget buildFamilia() => TextFormField(
    textInputAction: TextInputAction.next,
    maxLines: 1,
    initialValue: familia,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Familia',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Familia no puede estar vacía'
        : null,
    onChanged: onChangeFamilia,
  );

  Widget buildCategoria() => TextFormField(
    textInputAction: TextInputAction.done,
    maxLines: 1,
    initialValue: categoria,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
      labelText: 'Categoría',
      border: OutlineInputBorder(),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'Categoría no puede estar vacía'
        : null,
    onChanged: onChangeCategoria,
  );
}