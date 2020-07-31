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
    var estrelaCheia = Icon(
      Icons.star,
      color: Colors.amber,
      size: alturaTela * .05,
    );
    var estrelaVazia = Icon(
      Icons.star_border,
      size: alturaTela * .05,
    );
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
                SizedBox(height: alturaTela * .023),
                SizedBox(
                    height: alturaTela * .190,
                    child: CircleAvatar(
                      foregroundColor: Colors.amber,
                      backgroundColor: Colors.amber,
                      radius: alturaTela * .099,
                      backgroundImage: profissional.usuario.urlPerfil != null
                          ? NetworkImage(profissional.usuario.urlPerfil)
                          : AssetImage('assets/cliente.png'),
                    )),
                SizedBox(height: alturaTela * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    estrelaCheia,
                    profissional.avaliacao > 1 ? estrelaCheia : estrelaVazia,
                    profissional.avaliacao > 2 ? estrelaCheia : estrelaVazia,
                    profissional.avaliacao > 3 ? estrelaCheia : estrelaVazia,
                    profissional.avaliacao > 4 ? estrelaCheia : estrelaVazia,
                  ],
                ),
                SizedBox(height: alturaTela * .03),
                Text(
                  profissional.nomeCompleto,
                  style: TextStyle(
                      // color: myDarkBlue,
                      fontSize: larguraTela * .04,
                      height: alturaTela * .000000000009,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: alturaTela * .1,
                  width: larguraTela * .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '144,00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4CAF50)),
                      ),
                      SizedBox(width: larguraTela * .015),
                      Image.asset(
                        'assets/money.png',
                        width: larguraTela * .07,
                        height: alturaTela * .3,
                      )
                    ],
                  ),
                ),
                // SizedBox(height: alturaTela * .03),
                Container(
                  height: alturaTela * .068,
                  width: larguraTela * .6,
                  child: BtnGenericoWidget(
                    fontSize: alturaTela * .03,
                    titulo: "Escolher",
                    color: myDarkBlue,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
