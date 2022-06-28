import 'package:flutter/material.dart';
import 'package:ous/NavBar.dart';
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('過去問まとめ'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0), //マージン
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.folder),
                    label: Text('基盤教育科目', textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //マージン
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.folder),
                    label: Text('学部別', textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //マージン
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.folder),
                    label: Text('教職課程科目', textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}




