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

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** 追加する部分 ***
      appBar: AppBar(
        title: const Text('リスト追加'),
      ),
      // *** 追加する部分 ***
      body: Container(
        // 余白を付ける
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // テキスト入力
            const TextField(),
            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                // color: Colors.blue,
                onPressed: () {},
                child:
                    const Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る
                  Navigator.of(context).pop();
                },
                child: const Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// リスト追加画面用Widget
// class TodoAddPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // *** 追加する部分 ***
//       appBar: AppBar(
//         title: const Text('リスト追加'),
//       ),
//       // *** 追加する部分 ***
//       body: Container(
//         // 余白を付ける
//         padding: const EdgeInsets.all(64),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // テキスト入力
//             const TextField(),
//             const SizedBox(height: 8),
//             SizedBox(
//               // 横幅いっぱいに広げる
//               width: double.infinity,
//               // リスト追加ボタン
//               child: ElevatedButton(
//                 // color: Colors.blue,
//                 onPressed: () {},
//                 child:
//                     const Text('リスト追加', style: TextStyle(color: Colors.white)),
//               ),
//             ),
//             const SizedBox(height: 8),
//             SizedBox(
//               // 横幅いっぱいに広げる
//               width: double.infinity,
//               // キャンセルボタン
//               child: TextButton(
//                 // ボタンをクリックした時の処理
//                 onPressed: () {
//                   // "pop"で前の画面に戻る
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('キャンセル'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
