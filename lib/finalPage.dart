import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'mainpage.dart';


class Result extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Result({@required this.Textone,@required this.Textthree,@required this.Texttwo});
  // ignore: non_constant_identifier_names
  final String Textone;
  // ignore: non_constant_identifier_names
  final String Texttwo;
  // ignore: non_constant_identifier_names
  final String Textthree;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              "BMI CALCULATOR", style: appstyle
          ),
        ),
      ),
      body:Container(
          margin: EdgeInsets.only(top: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Your Result",style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.deepOrange[300]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        Textone
                        ,style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),),
                      Text(Texttwo,style: TextStyle(
                          color:Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold
                      ),),
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Text(Textthree,
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  color: activeColor,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "RE-CALCULATOR", style: bottomButton,
                    ),
                  ),),
              )
            ],
          )
      ),
    );
  }
}


