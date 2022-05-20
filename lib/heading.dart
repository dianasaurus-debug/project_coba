import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Heading extends StatefulWidget {
  final String text;

  const Heading ({ Key? key, required this.text }): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HeadingState();
  }
}

class _HeadingState extends State<Heading> {
  var textSize = 30.0;

  void _perbesarText(){
    setState(() {
      textSize +=6.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Text(widget.text, style: TextStyle(fontSize : textSize, color : Colors.black54, fontWeight: FontWeight.bold)),
              SizedBox(
                  height : 10
              ),
              ElevatedButton (
                  onPressed: _perbesarText,
                  child : Text('Make it bigger!')
              ),
            ]
        )
      )

    );
  }
}