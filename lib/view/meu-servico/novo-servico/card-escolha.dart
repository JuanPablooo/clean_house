import 'package:clean_house/constants/cores.dart';
import 'package:clean_house/models/api/profissional.dart';
import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:flutter/material.dart';

class CardEscolhaProfissional extends StatelessWidget {
  final double larguraTela;
  final double alturaTela;
  final Profissional profissional;
  const CardEscolhaProfissional(
      {Key key,
      this.profissional,
      @required this.alturaTela,
      @required this.larguraTela})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraTela * .8,
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(larguraTela * .05),
          ),
          child: Container(
            height: alturaTela * .5,
            width: larguraTela * .5,
            child: Column(
              children: <Widget>[
                SizedBox(height: alturaTela * .035),
                SizedBox(
                  height: alturaTela * .167,
                  child: Image.asset('assets/cliente.png'),
                ),
                Text(profissional.nomeCompleto),
                Text('Rua Santa Secilia'),
                Text(profissional.celular),
                Text('R\$ 100,00'),
                SizedBox(height: alturaTela * .029),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
                SizedBox(height: alturaTela * .03),
                Container(
                  height: alturaTela * .068,
                  width: larguraTela * .6,
                  child: BtnGenericoWidget(
                    fontSize: alturaTela * .03,
                    titulo: "Escolher",
                    color: myGreen,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
