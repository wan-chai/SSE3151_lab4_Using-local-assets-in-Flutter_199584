import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  Home();
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);
 
  @override
  Widget build(BuildContext context) {
    //display setup
    return Scaffold(
      appBar: AppBar(
        title: Text('MY FIRST APP - 199584',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'cursive',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
      child: Column(
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage('assets/image2.jpg'),
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('assets/'+imageArray[randomIntForDiceOne], height: 150, width: 150,),
                  Image.asset('assets/'+imageArray[randomIntForDiceTwo], height: 150, width: 150,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text('The sum is : ' + (randomIntForDiceOne + randomIntForDiceTwo + 2).toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: RaisedButton(onPressed: changeImage,
                  child: Text('Roll Dice'),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
    
  }
 
  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}
