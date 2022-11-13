import 'package:flutter/material.dart';
import 'package:todo1/todo.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: Center(
          child: Center(
            child: ListView(
              children: <Widget>[
                Image.asset('images/pen.png'),
                SizedBox(
                    height:100
                ),
                TextField(
                  decoration: InputDecoration(
                      filled:true,
                      fillColor:Colors.white,
                      labelText: 'mail'),
                ),
                TextField(
                  decoration: InputDecoration(
                      filled:true,
                      fillColor:Colors.white,
                      labelText: 'password'),
                ),
                SizedBox(
                    height:50
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent.shade200,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        )),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => todo()
                      ));
                    },
                    child: Text('log in'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}