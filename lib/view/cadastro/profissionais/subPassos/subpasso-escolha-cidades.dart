import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/controller/passos-controller.dart';
import 'package:clean_house/controller/usuario-controller.dart';
import 'package:clean_house/view/cadastro/passosGenericos/subPassos/sub-passo-abstract.dart';
import 'package:clean_house/view/cadastro/profissionais/subPassos/escolha-foto-profissional.dart';
import 'package:clean_house/view/widgets/buttons/btn-continuar.dart';
import 'package:clean_house/view/widgets/buttons/btn-generic.dart';
import 'package:clean_house/view/widgets/circulo-subpasso.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EscolhaCidade extends StatefulWidget implements SubPassAbstract{
  @override
  _EscolhaCidadeState createState() => _EscolhaCidadeState();
}

class _EscolhaCidadeState extends State<EscolhaCidade> {
  bool osasco = false;
  bool saoPaulo = false;
  bool jandira = false;
  bool  carapicuiba = false;
  bool  barueri = false;
  void ativaTodos(){
    setState(() {
      osasco = true;
      saoPaulo = true;
      jandira = true;
      carapicuiba = true;
      barueri = true;
    });

  }



  @override
  Widget build(BuildContext context)  {
    final UsuarioController userController = Provider.of<UsuarioController>(context);
    final PassosController passosController = Provider.of<PassosController>(context);

    return  Column(
      children: <Widget>[
        SizedBox(
          height: 365,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 10.0,
                      spreadRadius: .8,
                      color: Colors.grey
                  ),
                ]
            ),
            child:   Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: osasco,
                          onChanged: (bool newValue)=>{
                            setState(()=> {osasco = newValue})
                          },
                        ),
                        Text('Osasco')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: saoPaulo,
                          onChanged: (bool newValue)=>{
                            setState((){saoPaulo = newValue;})
                          },
                        ),
                        Text('São Paulo')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: carapicuiba,
                          onChanged: (bool newValue)=>{
                            setState((){carapicuiba = newValue;})
                          },
                        ),
                        Text('Carapicuiba')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: barueri,
                          onChanged: (bool newValue)=>{
                            setState((){barueri = newValue;})
                          },
                        ),
                        Text('Barueri')
                      ],
                    ),
                    btnGeneric('Selecionar todas', myDarkBlue, ativaTodos, null, 250.0)
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CirculoSubPasso(corCirculo: myBlue,),
                        CirculoSubPasso(corCirculo: myBlue,),
                        CirculoSubPasso(corCirculo: myDarkBlue,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: BtnContinuar(
            onPress: passosController.trocaSubPasso,
            proximoPasso: EscolhaFotoProfissional(),
          ),
        )
      ],
    );
  }
}
