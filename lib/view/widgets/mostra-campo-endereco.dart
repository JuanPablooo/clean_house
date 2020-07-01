import 'package:flutter/material.dart';

class CampoEndereco extends StatefulWidget {
  double width;
  double height;
  String name;
  String value;

  CampoEndereco({Key key, this.width, this.height, this.name, this.value})
      : super(key: key);

  @override
  _CampoEnderecoState createState() => _CampoEnderecoState();
}

class _CampoEnderecoState extends State<CampoEndereco> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.name,
                  style: TextStyle(fontSize: widget.height * .35),
                ),
                Text(
                  widget.value,
                  style: TextStyle(fontSize: widget.height * .45),
                )
              ],
            )));
  }
}
