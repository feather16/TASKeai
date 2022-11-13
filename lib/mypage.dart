import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:todo1/setting.dart';
import 'package:todo1/todo.dart';
import 'package:todo1/timeline.dart';
import 'package:todo1/mypage.dart';
import 'package:todo1/task_edit.dart';

class mypage extends StatefulWidget {
  static const String id = 'mypage';


  const mypage({super.key, required this.title});
  final String title;

  @override
  State<mypage> createState() => _mypage();
}
class _mypage extends State<mypage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyPage"),
        backgroundColor: Color(0xFF273668),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: const Alignment(0, 1),
                child: Image(
                  image: AssetImage("images/sozai8.png"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child:
                OutlinedButton(onPressed: null, child: Text("ゲットしたメダル")),
              ),
              SizedBox(
                width: double.infinity,
                child:
                OutlinedButton(onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => setting()
                  ))
                }, child: Text("通知・画面設定")),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: null, child: Text("フォロー中")),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: null, child: Text("フォロワー")),
              ),
            ]),
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
          else if(i == 2){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => task_edit()
              ))
            }
          /*else if(i == 4){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => mypage(title: 'マイページ')
              ))
            }*/
        },
      ),
    );
  }
}



