import 'package:clean_house/view/widgets/btn-generic.dart';
import 'package:clean_house/view/widgets/mostra-campo-endereco.dart';
import 'package:flutter/material.dart';

class NavigationDadosContent extends StatefulWidget {
  double larguraTela;
  double alturaTela;

  NavigationDadosContent({Key key, this.larguraTela, this.alturaTela})
      : super(key: key);
  @override
  _NavigationDadosContentState createState() => _NavigationDadosContentState();
}

class _NavigationDadosContentState extends State<NavigationDadosContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: widget.alturaTela * .057,
        ),
        Container(
          alignment: Alignment.topCenter,
          width: widget.larguraTela / 1,
          height: widget.alturaTela / 9,
          child: Center(
            child: Text(
              'Informações pessoais',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.alturaTela * .05,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: widget.alturaTela * .5,
          width: widget.larguraTela * .75,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: widget.alturaTela * .03,
              ),
              SizedBox(
                height: widget.alturaTela * .03,
              ),
              CampoInfoTitleValue(
                name: 'nome:',
                value: 'Juan Pablo',
                height: widget.alturaTela * .07,
                width: widget.larguraTela * .58,
              ),
              SizedBox(
                height: widget.alturaTela * .03,
              ),
              CampoInfoTitleValue(
                name: 'email:',
                value: 'juan@email.com',
                height: widget.alturaTela * .07,
                width: widget.larguraTela * .58,
              ),
              SizedBox(
                height: widget.alturaTela * .03,
              ),
              CampoInfoTitleValue(
                name: 'Telefone:',
                value: '99225163',
                height: widget.alturaTela * .07,
                width: widget.larguraTela * .58,
              ),
              SizedBox(
                height: widget.alturaTela * .03,
              ),
              CampoInfoTitleValue(
                name: 'Celular:',
                value: '1199225163',
                height: widget.alturaTela * .07,
                width: widget.larguraTela * .58,
              ),
            ],
          ),
        ),
        SizedBox(
          height: widget.alturaTela * .02,
        ),
        SizedBox(
          width: widget.larguraTela * .7,
          height: widget.alturaTela * .08,
          child: BtnGenericoWidget(
            titulo: "Editar",
            fontSize: 19.0,
            color: Colors.green,
            onPress: () => {},
          ),
        ),
      ],
    ));
  }
}
