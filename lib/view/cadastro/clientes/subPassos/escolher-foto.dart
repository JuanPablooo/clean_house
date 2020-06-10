


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




class PegarImagen extends StatefulWidget {

  @override
  _PegarImagenState createState() => _PegarImagenState();
}

class _PegarImagenState extends State<PegarImagen> {
  String pathImage = "assets/passo1c.png";

  @override
  void setState(fn) {
    print(fn);
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 50,
            child: FlatButton( child: Text("abre a galeria"),
              onPressed: () async{
                var fileNa = await getGaleria();
                setState(fileNa);

              },
            ),
          ),
          Container(
            child: SizedBox(
              height: 100,
              width: 100,
//              child: Image.file(new File(pathImage)),
            ),
          )
        ],
      ),
    );
  }
}

getGaleria() async {
  ImagePicker imagePicker = new ImagePicker();
//    var fileName2 = imagePicker.getImage(source: )
  var fileName = await ImagePicker.pickImage(source: ImageSource.gallery);
  return fileName;
}
//class UplodaImageApp extends StatefulWidget {
//  @override
//  _UplodaImageAppState createState() => _UplodaImageAppState();
//}
//
//class _UplodaImageAppState extends State<UplodaImageApp> {
//  List<String> urlImages = [];
//  bool loading = false;
//
//  @override
//  Widget build(BuildContext context) {
//
//
//    return Scaffold(
//      appBar: AppBar(title: Text("upload"),),
//      floatingActionButton: FloatingActionButton(child: Icon(Icons.file_upload),
//      onPressed: ()=>getGaleria(),
//      ),
//      body: Container(),
//    );
//  }
//
//}
