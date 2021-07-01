import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'GanderCard.dart';
import 'Reuseablecard.dart';
import 'constant.dart';
import 'finalPage.dart';
import 'logic.dart';
const activeColor = Colors.deepOrange;
const inActiveColor = Color(0xfffF8A65);
enum Gender {male,female}
class MainPage extends StatefulWidget {
  MainPage({this.appstyle});
  final appstyle;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color femaleCardColor = inActiveColor;
  Color maleCardColor = inActiveColor;
  int height = 150;
  int age = 20;

  // ignore: non_constant_identifier_names
  int Weight = 40;

  // ignore: non_constant_identifier_names
  Gender SeletedGander;

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
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Reuseablecard(
                          onPress: () {
                            setState(() {
                              SeletedGander = Gender.male;
                            });
                          },
                          color: SeletedGander == Gender.male
                              ? activeColor
                              : inActiveColor,
                          cardchild: GanderCard(
                            text: "Male", icon: FontAwesomeIcons.mars,),
                        ),
                      ),
                      Expanded(
                        child: Reuseablecard(
                          onPress: () {
                            setState(() {
                              SeletedGander = Gender.female;
                            });
                          },
                          color: SeletedGander == Gender.female
                              ? activeColor
                              : inActiveColor,
                          cardchild: GanderCard(
                            text: "Female", icon: FontAwesomeIcons.venus,),
                        ),
                      ),
                    ])
            ),
            Expanded(
              child: Reuseablecard(color: inActiveColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Height", style: gandercard),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          height.toString(), style: textStyle,
                        ),
                        Text("cm", style: gandercard,),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0)
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 200,
                        activeColor: activeColor,
                        inactiveColor: Colors.white,
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Reuseablecard(
                            cardchild: Column(
                              children: [
                                Text("Weight", style: gandercard,),
                                Text(Weight.toString(), style: textStyle,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          Weight++;
                                        });
                                      },
                                      backgroundColor: Colors.white,
                                      child: addIcon,),
                                    SizedBox(width: 10,),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          Weight--;
                                        });
                                      },
                                      backgroundColor: Colors.white,
                                      child: minsIcon,)
                                  ],
                                ),
                              ],
                            ),
                            color: inActiveColor),
                      ),
                      Expanded(
                        child: Reuseablecard(color: inActiveColor,
                          cardchild: Column(
                            children: [
                              Text("Age", style: gandercard,),
                              Text(age.toString(), style: textStyle,),
                              Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    backgroundColor: Colors.white,
                                    child: addIcon,),
                                  SizedBox(width: 10,),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                       age--;
                                      });
                                    },
                                    backgroundColor: Colors.white,
                                    child: minsIcon,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])
            ),
            GestureDetector(
                   onTap: (){
                     Brain obj =new Brain(height: height,weight: Weight);

                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
                       Texttwo: obj.Calculation(),
                       Textone :obj.getResult() ,
                       Textthree: obj.comment(),
                     )));
                   },
              child: Container(
                color: activeColor,
                height: 50.0,
                child: Center(
                  child: Text(
                    "CALCULATOR", style: bottomButton,
                  ),
                ),),
            )
          ]),
    );
  }
}



