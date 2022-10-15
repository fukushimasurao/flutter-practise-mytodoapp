import 'package:flutter/material.dart';

void main() {
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO　アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト一覧'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
              child: ListTile(
            title: Text('ニンジンを買う'),
          )),
          Card(
              child: ListTile(
            title: Text('タマネギを買う'),
          )),
          Card(
              child: ListTile(
            title: Text('ジャガイモを買う'),
          )),
          Card(
              child: ListTile(
            title: Text('カレールーを買う'),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // "push"で新規画面に遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
        },
      ),
    );
  }
}

// リスト追加画面用Widget
class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('リスト追加')),
      body: Container(
        padding: const EdgeInsets.all(64),
        child: TextButton(
          child: const Text('リスト追加画面（クリックで戻る）'),
          // ボタンをクリックした時の処理
          onPressed: () {
            // "pop"で前の画面に戻る
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
