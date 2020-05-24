import 'package:flutter/material.dart';



class WeeklyShift extends StatefulWidget {
  @override
  _WeeklyShiftState createState() => _WeeklyShiftState();
}
final List<String> Shift= <String>["Senin","Selasa","Rabu"];
class _WeeklyShiftState extends State<WeeklyShift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Shift Minggu ini")
      ),
      body: Container(
        height: 200,
        child:ListView.builder(
          itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child:Card(child: Text('${Shift[index]}'),)
          );
          })
      ),
    );
  }
}