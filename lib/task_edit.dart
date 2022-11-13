import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:todo1/todo.dart';
import 'package:todo1/timeline.dart';
import 'package:todo1/mypage.dart';
import 'package:todo1/task_edit.dart';

class task_edit extends StatelessWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  bool remind = false;
  void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create New Task',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('タスクの追加'),
          backgroundColor: const Color(0xff273668),
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
          onTap: (int i) => {
            if(i == 0){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => todo()
              ))
            }
            else if(i == 1){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => timeline(title: 'タイムライン')
              ))
            }
            /*else if(i == 2){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => task_edit()
              ))
            }*/
            else if(i == 4){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => mypage(title: 'マイページ')
                ))
              }
          },
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Spacer(),
              Text(
                "タスクの追加",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(labelText: 'タイトル'),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Spacer(),
              TextField(
                  decoration: InputDecoration(labelText: 'メモ'),
                  style: TextStyle(
                    fontSize: 24,
                  ),
              ),
              Spacer(),
              TextField(
                  decoration: InputDecoration(labelText: '〆切'),
                  style: TextStyle(
                    fontSize: 24,
                  ),
              ),
              Spacer(),
              SwitchListTile(
                title: const Text(
                  'リマインド',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                value: remind,
                onChanged: onChanged,
              ),
              Spacer(),
              TextButton(
                onPressed: () => {},
                child: Text(
                  '作成',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFFDF2935),
                  ),

                ),
                style: TextButton.styleFrom(
                  minimumSize: Size(250, 50), //最小のサイズ
                  backgroundColor: Color(0xFFDF2935),
                ),
              ),
              Spacer(),
            ],
          )
        ),
      ),
    );
  }
}