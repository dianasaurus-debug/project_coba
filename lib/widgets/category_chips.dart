import 'package:flutter/material.dart';
import 'package:kos_dea/utils/constants.dart';

class chipWidget extends StatelessWidget {
  const chipWidget(this.label, this.color);

  @required
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:7.0),
      child: Chip(
        labelPadding: EdgeInsets.all(0.0),
        label: Text(
          label,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
        shape: StadiumBorder(side: BorderSide(color: color)),
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
