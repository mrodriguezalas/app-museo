final String tableNotes = 'notes';

class NoteFields{
  static final List<String> values = [
    //Add all fields
    id, isImportant, number, title, description, time, paisCantonDistrito, coordenadas, altitud, recolectores, habitat, areaProtegida,
    metodologia, taxon, reino, filo, subfilo, clase, subclase, orden, suborden, superfamilia, familia, categoria
  ];

  static final String id = '_id';
  static final String isImportant = 'isImportant';
  static final String number = 'number';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
  static final String paisCantonDistrito = 'paisCantonDistrito';
  static final String coordenadas = 'coordenadas';
  static final String altitud = 'altitud';
  static final String recolectores = 'recolectores';
  static final String habitat = 'habitat';
  static final String areaProtegida = 'areaProtegida';
  static final String metodologia = 'metodologia';
  static final String taxon = 'taxon';
  static final String reino = 'reino';
  static final String filo = 'filo';
  static final String subfilo = 'subfilo';
  static final String clase = 'clase';
  static final String subclase = 'subclase';
  static final String orden = 'orden';
  static final String suborden = 'suborden';
  static final String superfamilia = 'superfamilia';
  static final String familia = 'familia';
  static final String categoria = 'categoria';
}

class Note {
  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;
  final String paisCantonDistrito;
  final String coordenadas;
  final String altitud;
  final String recolectores;
  final String habitat;
  final String areaProtegida;
  final String metodologia;
  final String taxon;
  final String reino;
  final String filo;
  final String subfilo;
  final String clase;
  final String subclase;
  final String orden;
  final String suborden;
  final String superfamilia;
  final String familia;
  final String categoria;

  const Note({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
    required this.paisCantonDistrito,
    required this.coordenadas,
    required this.altitud,
    required this.recolectores,
    required this.habitat,
    required this.areaProtegida,
    required this.metodologia,
    required this.taxon,
    required this.reino,
    required this.filo,
    required this.subfilo,
    required this.clase,
    required this.subclase,
    required this.orden,
    required this.suborden,
    required this.superfamilia,
    required this.familia,
    required this.categoria,
  });

  Note copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
    String? paisCantonDistrito,
    String? coordenadas,
    String? altitud,
    String? recolectores,
    String? habitat,
    String? areaProtegida,
    String? metodologia,
    String? taxon,
    String? reino,
    String? filo,
    String? subfilo,
    String? clase,
    String? subclase,
    String? orden,
    String? suborden,
    String? superfamilia,
    String? familia,
    String? categoria,
  }) =>
    Note(
      id: id ?? this.id,
      isImportant: isImportant ?? this.isImportant,
      number: number ?? this.number,
      title: title ?? this.title,
      description: description ?? this.description,
      createdTime: createdTime ?? this.createdTime,
      paisCantonDistrito : paisCantonDistrito ?? this.paisCantonDistrito,
      coordenadas : coordenadas ?? this.coordenadas,
      altitud : altitud ?? this.altitud,
      recolectores : recolectores ?? this.recolectores,
      habitat : habitat ?? this.habitat,
      areaProtegida : areaProtegida ?? this.areaProtegida,
      metodologia: metodologia ?? this.metodologia,
      taxon : taxon ?? this.taxon,
      reino : reino ?? this.reino,
      filo : filo ?? this.filo,
      subfilo : subfilo ?? this.subfilo,
      clase : clase ?? this.clase,
      subclase : subclase ?? this.subclase,
      orden : orden ?? this.orden,
      suborden : suborden ?? this.suborden,
      superfamilia : superfamilia ?? this.superfamilia,
      familia : familia ?? this.familia,
      categoria : categoria ?? this.categoria,
    );

  static Note fromJson(Map<String, Object?> json) => Note(
    id: json[NoteFields.id] as int?,
    isImportant: json[NoteFields.isImportant] == 1,
    number: json[NoteFields.number] as int,
    title: json[NoteFields.title] as String,
    description: json[NoteFields.description] as String,
    createdTime: DateTime.parse(json[NoteFields.time] as String),
    paisCantonDistrito: json[NoteFields.paisCantonDistrito] as String,
    coordenadas: json[NoteFields.coordenadas] as String,
    altitud: json[NoteFields.altitud] as String,
    recolectores: json[NoteFields.recolectores] as String,
    habitat: json[NoteFields.habitat] as String,
    areaProtegida: json[NoteFields.areaProtegida] as String,
    metodologia: json[NoteFields.metodologia] as String,
    taxon: json[NoteFields.taxon] as String,
    reino: json[NoteFields.reino] as String,
    filo: json[NoteFields.filo] as String,
    subfilo: json[NoteFields.subfilo] as String,
    clase: json[NoteFields.clase] as String,
    subclase: json[NoteFields.subclase] as String,
    orden: json[NoteFields.orden] as String,
    suborden: json[NoteFields.suborden] as String,
    superfamilia: json[NoteFields.superfamilia] as String,
    familia: json[NoteFields.familia] as String,
    categoria: json[NoteFields.categoria] as String,
  );

  Map<String, Object?> toJson() => {
    NoteFields.id: id,
    NoteFields.isImportant: isImportant ? 1 : 0,
    NoteFields.number: number,
    NoteFields.title: title,
    NoteFields.description: description,
    NoteFields.time: createdTime.toIso8601String(),
    NoteFields.paisCantonDistrito : paisCantonDistrito,
    NoteFields.coordenadas : coordenadas,
    NoteFields.altitud : altitud,
    NoteFields.recolectores : recolectores,
    NoteFields.habitat : habitat,
    NoteFields.areaProtegida : areaProtegida,
    NoteFields.metodologia : metodologia,
    NoteFields.taxon : taxon,
    NoteFields.reino : reino,
    NoteFields.filo : filo,
    NoteFields.subfilo : subfilo,
    NoteFields.clase : clase,
    NoteFields.subclase : subclase,
    NoteFields.orden : orden,
    NoteFields.suborden : suborden,
    NoteFields.superfamilia : superfamilia,
    NoteFields.familia : familia,
    NoteFields.categoria : categoria
  };
}