import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DatePickerController _controller = DatePickerController();


  // formattedDate(date) {
  //   final DateTime convertedDate = DateTime.parse(date);
  //   final DateFormat formatter = DateFormat('dd-MM-yyyy');
  //   final String formatted = formatter.format(convertedDate);
  //   print(formatted);
  //   return formatted;
  //   // something like 2013-04-20
  // }

  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Date")
      ),
      body: Column(
        children:[
          Container(
            child:Card(
              child: DatePicker(
                DateTime.now(),
                width: 60,
                height: 80,
                controller: _controller,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.grey,
                selectedTextColor: Colors.white,
                // inactiveDates: [
                //   DateTime.now().add(Duration(days: 3)),
                //   DateTime.now().add(Duration(days: 4)),
                //   DateTime.now().add(Duration(days: 7))
                // ],
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    selectedDate = date;
                  });
                },

              )
            )
          ),
          Container(
            height: 200,
            child: ListView(
              children: [
                Wrap(
                  children: [
                    Chip(
                        label: Text("9:00")
                    )
                  ],
                )
              ],
            )
          ),
          Container(
              height: 200,
              child: ListView(
                children: [
                  Wrap(
                    children: [
                      Chip(
                          label: Text("1")
                      )
                    ],
                  )
                ],
              )
          )

        ]
      )
    );
  }
}
