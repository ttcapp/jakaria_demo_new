import 'package:flutter/material.dart';
import 'package:jakaria_demo/utills/all_colors.dart';
class logInPage extends StatefulWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  _logInPageState createState() => _logInPageState();
}
// for global variables
final _formkey= GlobalKey<FormState>();


class _logInPageState extends State<logInPage> {
  @override
  Widget build(BuildContext context) {
    double h= MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.lime,
        child: Padding(
          padding: EdgeInsets.only(
              top:  h*0.09,
              left: w*0.07,
              right: w*0.07),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Icon (Icons.account_circle_sharp,
                size: h*0.08+ w*0.08,),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeColor
                    ),
                    hintText: "Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded,
                    color: AllColors.appThemeColor,),
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeColor
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(
                          color: AllColors.appThemeColor
                      ),
                      hintText: "Enter Your Password",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: AllColors.appThemeColor,),
                      focusedBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AllColors.appThemeColor
                        ),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AllColors.appThemeColor
                  ),
                    onPressed: (){

                    },
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login),
                          SizedBox(width: 8,),
                          Text("LOG IN", style: TextStyle(
                            fontSize: 20
                          ),),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
