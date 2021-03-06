import 'package:flutter/material.dart';
import 'package:ous/NavBar.dart';
import 'package:ous/Nav/call.dart';
import 'package:ous/info/2.dart';
import 'package:ous/info/3.dart';
import 'package:ous/info/4.dart';
import 'package:ous/info/5.dart';
import 'package:ous/info/all.dart';
class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('News'),
          bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal:10),

              tabs: [
            Text('全て',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),

                Text('重要',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text('お知らせ',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text('学科レポート',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text('理大レポート',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            all(),
            important(),
            news(),
            Departmentreport(),
            report(),

          ],
        ),
      ),
    );
  }
}