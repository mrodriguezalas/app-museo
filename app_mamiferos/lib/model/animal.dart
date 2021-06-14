class Animal{
  final int id;
  final String nombre;
  final String nombreCientifico;
  final String imagen;
  final String huella;
  final String texto1;
  final String texto2;
  final String texto3;

  const Animal({
    required this.id,
    required this.nombre,
    required this.nombreCientifico,
    required this.imagen,
    required this.huella,
    required this.texto1,
    required this.texto2,
    required this.texto3,
});

  factory Animal.fromJson(Map<String, dynamic> json) => Animal(
    id: json['id'],
    nombre: json['nombre'],
    nombreCientifico: json['nombreCientifico'],
    imagen: json['imagen'],
    huella: json['huella'],
    texto1: json['texto1'],
    texto2: json['texto2'],
    texto3: json['texto3']
  );

  Map<String, dynamic> toJson() =>{
    'id': id,
    'nombre': nombre,
    'nombreCientifico': nombreCientifico,
    'imagen': imagen,
    'huella': huella,
    'texto1': texto1,
    'texto2': texto2,
    'texto3': texto3
  };
}