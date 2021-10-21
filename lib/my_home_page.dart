import 'package:flutter/material.dart';
import 'package:jakaria_demo/second_page.dart';
import 'package:jakaria_demo/utills/all_colors.dart';
import 'package:jakaria_demo/utills/all_strings.dart';
String imgSrcAvatar="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2ErYG1XvLfC20RitfecW2b_1q2WYwTA1t9Q&usqp=CAU";
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AllColors.appBarClr,
        title: Text(AllStrings.jakariaMolla),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Image5.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter
                .mode(Colors.black12.withOpacity(0.2),
                BlendMode.dstATop))
          ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: width*0.15,
                    width: width*0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              imgSrcAvatar
                          )
                      ),
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(width: 3,
                          color: Colors.deepOrangeAccent)
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),

                            Column(
                             children: [
                               Text(AllStrings.text3405,
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                               ),),
                               Text(AllStrings.textPosts),
                             ],
                           ),
                            Spacer(),
                            Column(
                              children: [
                                Text(AllStrings.text65k,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text(AllStrings.textFlowers),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(AllStrings.text242,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text(AllStrings.textFlowers),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5,bottom: 5,left: 30,right: 30),
                                  child: Text(AllStrings.textMessage),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,

                                  )
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5,bottom: 5,left: 5,right: 5),
                                  child: Icon(Icons.account_circle,
                                  size: 15,)
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,

                                    )
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
           ElevatedButton(
               onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                (context)=>SecondPage()));
               },
               child: Text(AllStrings.textGoToNextPage)
           )
          ],
        ),
      ),
    );
  }
}
