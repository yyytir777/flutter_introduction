import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(CalendarApp());

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              DateFormat.yMMMM().format(_selectedDate),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TableCalendar(
              focusedDay: _selectedDate,
              firstDay: DateTime(DateTime.now().year - 1),
              lastDay: DateTime(DateTime.now().year + 1),
              calendarFormat: CalendarFormat.month,
              onFormatChanged: (format) {},
              onPageChanged: (focusedDay) {
                setState(() {
                  _selectedDate = focusedDay;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
