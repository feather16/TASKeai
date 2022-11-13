import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool state = false;

  //Providerのlistenがあるのでstatelessウィジェットに変更
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通知・画面設定"),
        backgroundColor: Color(0xFF273668),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Align(
              //   alignment: const Alignment(-1,1),
              //   child: Text(
              //     "画面表示",
              //     style: TextStyle(
              //       fontSize: 32,
              //     ),
              //   ),
              // ),
              Align(
                alignment: const Alignment(0, 0),
                child: Image(
                  image: AssetImage("images/haribote2.jpg"),
                ),
              ),
              // SizedBox(
              //   width: double.infinity,
              //   child: OutlinedButton(onPressed: null, child: Text("ゲットしたメダル")),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   child: OutlinedButton(onPressed: null, child: Text("通知・画面設定")),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   child: OutlinedButton(onPressed: null, child: Text("フォロー中")),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   child: OutlinedButton(onPressed: null, child: Text("フォロワー")),
              // ),
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
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
