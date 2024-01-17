import 'package:flutter/material.dart';
import 'more.dart';

class resultepage extends StatelessWidget {
  resultepage({this.height, this.age, this.weight, this.gender});
  String? gender;
  int? height;
  int? weight;
  int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 1500,
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(100,20,0,20),
                height: 100,
                width: 500,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 10.0, color: Colors.white),
                    left: BorderSide(width: 10.0, color: Colors.white),
                    right: BorderSide(width: 10.0, color: Colors.white),
                    bottom: BorderSide(width: 10.0, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.all(10),
                child: Text(
                  "YOUR GENDER IS $gender",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            Container(padding: EdgeInsets.fromLTRB(120,20,100,20),
                height: 100,
                width: 500,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 10.0, color: Colors.white),
                    left: BorderSide(width: 10.0, color: Colors.white),
                    right: BorderSide(width: 10.0, color: Colors.white),
                    bottom: BorderSide(width: 10.0, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.all(10),
                child: Text(
                  "YOUR AGE IS $age",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            Container(padding: EdgeInsets.fromLTRB(100,20,0,20),
                height: 100,
                width: 500,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 10.0, color: Colors.white),
                    left: BorderSide(width: 10.0, color: Colors.white),
                    right: BorderSide(width: 10.0, color: Colors.white),
                    bottom: BorderSide(width: 10.0, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.all(10),
                child: Text(
                  "YOUR HEIGHT IS $height",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            Container(padding: EdgeInsets.fromLTRB(100,20,100,20),
                height: 100,
                width: 500,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 10.0, color: Colors.white),
                    left: BorderSide(width: 10.0, color: Colors.white),
                    right: BorderSide(width: 10.0, color: Colors.white),
                    bottom: BorderSide(width: 10.0, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.all(10),
                child: Text(
                  "YOUR WEIGHT IS $weight",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            ElevatedButton(
              child: Text("MORE DETAILS"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalculatorBrain(
                            height: height,
                            weight: weight,
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
