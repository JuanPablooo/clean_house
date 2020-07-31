import 'package:flutter/material.dart';

Container addImgButton(imgName) => Container(
      child: SizedBox(
        child: Image.asset("assets/$imgName"),
        height: 32,
        width: 32,
      ),
    );

Container btnGeneric(titulo, cor, funcao, imgName, widthBtn) {
  var align = MainAxisAlignment.center;
  var icone = Container();
  if (imgName != null) {
    align = MainAxisAlignment.spaceAround;
    icone = addImgButton(imgName);
  }
  return Container(
    width: widthBtn,
    height: 50,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 3.0,
            spreadRadius: .8,
            color: Colors.black12)
      ],
      color: cor,
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
    child: FlatButton(
        onPressed: () {
          if (funcao != null) {
            funcao();
          }
        },
        child: Row(
          mainAxisAlignment: align,
          children: <Widget>[
            icone,
            Text(
              titulo,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )
          ],
        )),
  );
}
