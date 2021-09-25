//Flutter first learning file 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void button1Pressed() {
    print('Answer One selected');
  }

  Widget build(BuildContext context) {
    var questions = ['This is quation one', 'This is question two'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
             title: Text(
              'My First App',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          body: Column(
            children: [
              Text(
                'Here are the answers?',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                
                onPressed: button1Pressed,
                child: Text('Answer One'),
              ),
              ElevatedButton(
                onPressed: () => print('Answer Two selected'),
                child: Text('Answer Two'),
                
              ),
              ElevatedButton(
                onPressed: () {
                  //Aamir do some logic....
                  print('Answer Three selected');
                },
                child: Text('Answer Three'),
              ),
            ],
          )),
    );
  }
}
