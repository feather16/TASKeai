import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:todo1/todo.dart';
import 'package:todo1/timeline.dart';
import 'package:todo1/mypage.dart';
import 'package:todo1/task_edit.dart';

class todo extends StatelessWidget {
  const todo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }

  static List<String> tasks = [];
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final _todos = List.generate(
    todo.tasks.length,
        (index) => ToDo(todo.tasks[index]),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ToDoList'),
          backgroundColor: const Color(0xFF388E3C),
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
            if(i == 1){
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
        body: ListView.builder(
          itemCount: _todos.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Checkbox(
                value: _todos[index].checked,
                onChanged: (e) {
                  setState(() {
                    _todos[index].checked = e;
                  });
                },
              ),
              title: Text(_todos[index].title),
            
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: const Color(0xFF388E3C),
          onPressed: () {
            setState(() {
              _todos.add(
                ToDo(),
              );
            });
          },
        ));
  }
}

class ToDo {
  String title;
  bool? checked;
  ToDo([this.title = "", this.checked = false]);
}