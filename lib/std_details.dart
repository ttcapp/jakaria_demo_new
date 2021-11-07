import 'package:flutter/material.dart';
class stdDetailsPage extends StatefulWidget {
  String text;
  String img;
  stdDetailsPage({Key? key, required this.text, required this.img}) :
        super(key: key);

  @override
  _stdDetailsPageState createState() => _stdDetailsPageState();
}

class _stdDetailsPageState extends State<stdDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Students Details"),
      ),
      body: Column(
        children: [
          Image.asset(widget.img),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.text,
            style: TextStyle(
              color: Colors.green, fontSize: 30
            ),),
          )
        ],
      ),
    );
  }
}
