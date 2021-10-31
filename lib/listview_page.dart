import 'package:flutter/material.dart';
class listviewPage extends StatefulWidget {
  const listviewPage({Key? key}) : super(key: key);

  @override
  _listviewPageState createState() => _listviewPageState();
}
List<String> stdName=[
  "Masum",
  "Masud",
  "Jakaria",
  "Jashim",
  "Bishnu",
  "Imran",
  "Alamain"
];
class _listviewPageState extends State<listviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Listview Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("The Name of Students of TTC App",
              style: TextStyle(fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: stdName.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(stdName[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,
                          color: Colors.pink),),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
