import 'package:flutter/material.dart';
import 'package:jakaria_demo/model/student_model.dart';
class stdDetailsPage extends StatefulWidget {
  StudentDetails stdobj;
  String img;
  stdDetailsPage({Key? key, required this.stdobj,
    required this.img}) :
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
            child: Text(widget.stdobj.name,
            style: TextStyle(
              color: Colors.green, fontSize: 30
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.stdobj.id,
              style: TextStyle(
                  color: Colors.green, fontSize: 30
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.stdobj.number,
              style: TextStyle(
                  color: Colors.green, fontSize: 30
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.stdobj.address,
              style: TextStyle(
                  color: Colors.green, fontSize: 30
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.stdobj.age,
              style: TextStyle(
                  color: Colors.green, fontSize: 30
              ),),
          )
        ],
      ),
    );
  }
}
