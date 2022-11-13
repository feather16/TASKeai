import 'package:flutter/material.dart';

class todo extends StatelessWidget {
  const todo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final _todos = List.generate(
    3,
        (index) => ToDo(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ToDoList'),
          backgroundColor: const Color(0xFF388E3C),
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
              title: TextFormField(
                  style: _todos[index].checked == true
                      ? const TextStyle(decoration: TextDecoration.lineThrough)
                  : const TextStyle(color: Colors.black),
            ),
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