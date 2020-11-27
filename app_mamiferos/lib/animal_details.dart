import 'package:flutter/material.dart';

class AnimalDetails extends StatelessWidget {
  final int index;

  AnimalDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Nombre de especie $index')
      ),
      body: Center(
        child: Text('Detalles de la especie'),
      ),
    );
  }
}