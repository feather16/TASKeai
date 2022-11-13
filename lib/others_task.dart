import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:todo1/task_edit.dart';
import 'package:todo1/timeline.dart';
import 'package:todo1/todo.dart';

import 'mypage.dart';








class others_task extends StatefulWidget {
  others_task({Key? key}): super(key: key);

  @override
  State<others_task> createState() => _others_taskState();
}

class _others_taskState extends State<others_task> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Frends Tasks')),//タイトル
          backgroundColor: Color(0xFF273668),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  taiseibox(boxTitle: '英語単語テスト'),
                  taiseibox(boxTitle: '数学ベクトル課題'),
                  taiseibox(boxTitle: '漢文文法小テスト'),
                  taiseibox(boxTitle: '英語長文和訳'),
                  taiseibox(boxTitle: '世界史ノート提出'),
                ]
            )
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
          else if(i == 4){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => mypage(title: 'マイページ')
              ))
            }
        },
      ),
    )
    );
  }
}
class taiseibox extends StatefulWidget {

  final String boxTitle;

  taiseibox({required this.boxTitle});

  @override
  State<taiseibox> createState() => _taiseiboxState();
}

class _taiseiboxState extends State<taiseibox> {
  bool isChecked = false;

  bool isDisabled = false;

  MSHCheckboxStyle style = MSHCheckboxStyle.stroke;

  @override
  Widget build(BuildContext context) {
    final String boxTitle = widget.boxTitle;
    return Container(
      width: 300,
      height: 75,
      decoration: BoxDecoration(
        // 枠線
        border: Border.all(color: Colors.blue, width: 2),
        // 角丸
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(8),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(boxTitle),
          MSHCheckbox(
            size: 50,
            value: isChecked,
            isDisabled: isDisabled,
            colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
              checkedColor: Colors.green,
              uncheckedColor: Colors.grey.shade600,
            ),
            style: style,
            onChanged: (selected) {
              setState(() {
                isChecked = selected;
              });
            },
          ),
        ],
      ),
    );
  }
}