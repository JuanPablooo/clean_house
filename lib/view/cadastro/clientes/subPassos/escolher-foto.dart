


import 'dart:io';

import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/buttons/btn-streams.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:clean_house/view/widgets/input-widget-generic.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';




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

    final UsuarioController userController = Provider.of<UsuarioController>(context);
    final PassosController passosController = Provider.of<PassosController>(context);
    return Container(
      height: 300,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 45,
            width: 250,
            child: BtnStream(titulo: "ESCOLHA DA GALERIA",
              onPress: () async {
              var file = await getGaleria();
              if(file != null) mudaPathFoto(file);
              } ,)
          ),
          SizedBox(
            height: 45,
            width: 250,
            child: BtnContinuar(titulo: "TIRA UMA FOTO",),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black12),
            child: SizedBox(
              height: 100,
              width: 100,
              child: _imagem,
            ),
          ),
          Text('este item não é obrigatório')
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


