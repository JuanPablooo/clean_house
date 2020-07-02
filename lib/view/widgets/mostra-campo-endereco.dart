import 'package:flutter/material.dart';

class CampoInfoTitleValue extends StatefulWidget {
  double width;
  double height;
  String name;
  String value;

  CampoInfoTitleValue({Key key, this.width, this.height, this.name, this.value})
      : super(key: key);

  @override
  _CampoInfoTitleValueState createState() => _CampoInfoTitleValueState();
}

class _CampoInfoTitleValueState extends State<CampoInfoTitleValue> {
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
