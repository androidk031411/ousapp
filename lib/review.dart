import 'package:flutter/material.dart';
import 'package:ous/NavBar.dart';
class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavBar(),
    appBar: AppBar(
      title: Text('講義評価'),
    ),
    body: Center(child: Text('講義評価',style: TextStyle(fontSize: 60),),),
  );
}
