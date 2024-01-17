import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String gender = '';
  int height = 180;
  int weight = 60;
  int age = 20;
  Color colorofmale = Colors.grey;
  Color coloroffemale = Colors.grey;



  void _incre() {
    setState(() {
      weight++;
    });
  }

  void _decre() {
    setState(() {
      weight--;
    });
  }

  void _ageincre() {
    setState(() {
      age++;
    });
  }

  void _agedecre() {
    setState(() {
      age--;
    });
  }

  void _male() {
    setState(() {
      gender = "MALE";
      colorofmale = Colors.greenAccent;
      coloroffemale = Colors.redAccent;
    });
  }

  void _female() {
    setState(() {
      gender = "FEMALE";
      colorofmale = Colors.redAccent;
      coloroffemale = Colors.greenAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black45,
      child: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    color: colorofmale,
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    // border: Border(
                    //   top: BorderSide(width: 6.0, color: Colors.white),
                    //   left: BorderSide(width: 6.0, color: Colors.white),
                    //   right: BorderSide(width: 6.0, color: Colors.white),
                    //   bottom: BorderSide(width: 6.0, color: Colors.white),
                    // ),
                  ),
                  child: TextButton(
                    onPressed: _male,
                    child: Text(
                      "MALE",
                      style: TextStyle(fontSize: 30, color: Colors.white,backgroundColor: colorofmale),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: coloroffemale,
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  height: 200,
                  width: 150,
                  child: TextButton(
                    onPressed: _female,
                    child: Text(
                      "FEMALE",
                      style: TextStyle(fontSize: 30, color: Colors.white,backgroundColor: coloroffemale),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(50,30,0,0),
                  // height: 100,
                  // width: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  height: 80,
                  width: 200,
                  child: Text(
                    "HIEGHT",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(70,0,0,0),
                  // height: 100,
                  // width: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  height: 70,
                  width: 200,
                  child: Text(
                    "$height",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0xffffffff),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 20.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 0.0,
                          max: 500.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "cm",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0,0,10,0),
                      padding: EdgeInsets.fromLTRB(35,40,0,0),
                      // height: 100,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.grey,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      height: 80,
                      width: 180,
                      child: Text(
                        "WIEGHT",
                        style: TextStyle(fontSize: 30, color: Colors.white ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0,0,10,0),
                      padding: EdgeInsets.fromLTRB(75,0,0,0),                    // height: 100,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.grey,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      height: 70,
                      width: 180,
                      child: Text(
                        "$weight",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          // height: 100,
                          // width: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                                color: Colors.grey,
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: _incre,
                              child:Text("+",style: TextStyle(fontSize: 30,color: Colors.white),)
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(10),
                          // height: 100,
                          // width: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                                color: Colors.grey,
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: TextButton(
                            onPressed: _decre,
                              child:Text("-",style: TextStyle(fontSize: 30,color: Colors.white),)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.all(10),
                      padding: EdgeInsets.fromLTRB(55,40,0,0),
                      // height: 100,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.grey,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      height: 80,
                      width: 180,
                      child: Text(
                        "AGE",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.all(10),
                      padding: EdgeInsets.fromLTRB(65,0,0,0),
                      // height: 100,
                      // width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.grey,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      height: 70,
                      width: 180,
                      child: Text(
                        "$age",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          // height: 100,
                          // width: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                                color: Colors.grey,
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: _ageincre,
                              child:Text("+",style: TextStyle(fontSize: 30,color: Colors.white),)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          // height: 100,
                          // width: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(
                                color: Colors.grey,
                                width: 4.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: _agedecre,
                            child:Text("-",style: TextStyle(fontSize: 30,color: Colors.white),)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 200,
            child: ElevatedButton(
              child: Text("Your Resulte",style: TextStyle(fontSize: 40),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Background color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => resultepage(
                            height: height,
                            age: age,
                            weight: weight,
                            gender: gender,
                          )),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}