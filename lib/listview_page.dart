import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jakaria_demo/std_details.dart';
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
  "Alamin"
];
List<String> stdImg=[
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
  "assets/images/Image4.jpeg",
];
List<String> stdDetails=[
  "I am Masum. I am 25 Years Old, I live in Gopalgonj",
  "I am Masud. I am 25 Years Old, I live in Gopalgonj",
  "I am Jakaria. I am 35 Years Old, I live in Gopalgonj",
  "I am Jashim. I am 25 Years Old, I live in Gopalgonj",
  "I am Bishnu. I am 27 Years Old, I live in Gopalgonj",
  "I am Imran. I am 28 Years Old, I live in Gopalgonj",
  "I am Alamin. I am 30 Years Old, I live in Gopalgonj"
];
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
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
      body: LayoutBuilder(
        builder: (context,constraint){
          return SingleChildScrollView(

           child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child:
                Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true
                      ),
                      items: imgList
                          .map((item) => Container(
                        child: Center(
                            child:
                            Image.network(item, fit: BoxFit.cover, width: 1000)),
                      ))
                          .toList(),
                    ),
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
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder:
                                          (context)=>stdDetailsPage( text: stdDetails[index],
                                        img: stdImg[index],)));
                                },
                                child: Text(stdName[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30,
                                      color: Colors.pink),),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
            ),



          );
        },

      ),
    );
  }
}
