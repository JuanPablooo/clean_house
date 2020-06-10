


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




class PegarImagen extends StatefulWidget {

  @override
  _PegarImagenState createState() => _PegarImagenState();
}

class _PegarImagenState extends State<PegarImagen> {
  Image _imagem  = Image.asset("assets/cliente.png");


  void mudaPathFoto(pathFoto){
    setState(() {
      _imagem = Image.file(pathFoto);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: FlatButton( child: Text("abre a galeria"),
              onPressed: () async{
                var fileNa = await getGaleria();
                if(fileNa != null){
                  print("=-=-=-=-=-=-=-=");
                  print(fileNa);
                  print("=-=-=-=-=-=-=-=");
                  mudaPathFoto(fileNa);
                }
              },
            ),
          ),
          Container(
            child: SizedBox(
              height: 100,
              width: 100,
              child: _imagem,
            ),
          )
        ],
      ),
    );
  }
}

getGaleria() async {
  ImagePicker imagePicker = new ImagePicker();
//    var fileName = imagePicker.getImage(source: ImageSource.gallery);
    var fileName = await ImagePicker.pickImage(source: ImageSource.gallery);
  return fileName;
}
//onPressed: () async{
//var fileNa = await getGaleria();
//if(fileNa != null){
//print("=-=-=-=-=-=-=-=");
//print(fileNa);
//print("=-=-=-=-=-=-=-=");
//mudaPathFoto(fileNa);
//}

