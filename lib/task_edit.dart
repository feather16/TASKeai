import 'package:flutter/material.dart';

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