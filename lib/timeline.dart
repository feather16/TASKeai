import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:todo1/others_task.dart';

class timeline extends StatefulWidget {
  static const String id = 'timeline';


  const timeline({super.key, required this.title});
  final String title;

  @override
  State<timeline> createState() => _timeline();
}
class _timeline extends State<timeline> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE4),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xFF273668),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        backgroundColor: const Color(0xFF273668),
        onTap: (int i) => print('click index=$i'),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 60.0,
                width: 150.0,
              ),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
              contentflow(),
            ],
          ),

        ),
      ),
    );
  }
}

class contentflow extends StatelessWidget {
  const contentflow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/6652.jpeg'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('デンジさんが敬語の勉強を完了',
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('フォロー！'),
                            onPressed: (){
                              //Navigator.pushNamed(context, Demo_bene.id);
                            },),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('進捗状況'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => others_task()
                              ));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}