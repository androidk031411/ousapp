import 'package:flutter/material.dart';
import 'package:ous/main.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ous/home.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: (){
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
            ),
            title: Text('カレンダー'),
          ),
          body: Container(
              child: SfCalendar(
                view: CalendarView.schedule,
              )));

}
