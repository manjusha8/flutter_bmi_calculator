// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'BMI Calculator',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 2.5),
          ),
          actions: [
            IconButton(
                icon: Icon(
              Icons.settings,
              color: Colors.white,
            ))
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.red,
                  child: ListTile(
                    title: Text(
                      'Enter your weight and height using standard or metric '
                      'measures. Select "Compute BMI" and your BMI will appear below.',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/dog.jpg'),
                  ),
                  title: Text(
                    'Welcome , User!',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        fontSize: 25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Enter your Height: ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5),
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '(Cm)',
                        hintStyle: TextStyle(color: Colors.white54),
                        filled: false,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ))),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('Enter your Weight: ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5)),
              ),
              SizedBox(
                height: 7.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '(Kg)',
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: false,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    )),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                    child: Text(
                      'compute',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.yellow,
          selectedItemColor: Colors.black,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb), label: 'Plans'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'calculate'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Report')
          ],
        ),
      ),
    );
  }
}
