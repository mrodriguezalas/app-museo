import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Identificacion extends StatefulWidget{
  @override
  _IdentificacionState createState() => _IdentificacionState();
}

class _IdentificacionState extends State<Identificacion> {

  File? image;

  //tensorflow lite variables and output
  List? _result;
  String _confidence = "";
  String _name = "";
  String numbers = "";

  Future pickImage(ImageSource source) async{
    try{
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
      applyModelImage(imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }

  }

  loadMyModel() async{
    var result = await Tflite.loadModel(
      labels: "assets/labels.txt",
      model: "assets/model_unquant.tflite"
    );
  }

  applyModelImage(File file) async{
    var res = await Tflite.runModelOnImage(
      path: file.path,
      numResults: 3,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5
    );

    print(res);

    setState(() {
      _result = res;
      String str = _result?[0]['label'];
      _name = str.substring(2);
      _confidence = _result != null ? (_result?[0]['confidence'] * 100.0).toString().substring(0, 2) + "%" : "";
    });

  }

  @override
  void initState() {
    super.initState();
    loadMyModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(

            child: Text('Identificación'),
          )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 200.0,
            child: buildGalleryButton(),
          ),
          SizedBox(height: 15),
          Container(
            width: 200.0,
            child: buildCameraButton(),
          ),

        ],
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
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child:
                  image != null? Image.file(image!, width: 300, height: 240, fit: BoxFit.contain,) : Text('Select an image',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
                ),
                SizedBox(
                    width: 300,
                    child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child:
                      Text('Name: $_name \nConfidence: $_confidence', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0 )),
                    ),
                )
            ])
      ),
    );
  }

  Widget buildCameraButton() => FloatingActionButton.extended(
      onPressed: () => pickImage(ImageSource.camera),
      label: Text('Take a picture'),
      icon: Icon(Icons.camera)
  );

  Widget buildGalleryButton() => FloatingActionButton.extended(
      onPressed: () => pickImage(ImageSource.gallery),
      label: Text('Select from gallery'),
      icon: Icon(Icons.photo_album)
  );

}