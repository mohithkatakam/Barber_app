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
  bool isSelectedChip = true;

  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Date")
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          children:[
            Container(
              child:Card(
                child: Column(
                  children: [
                    Text("Select Date"),
                    DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 80,
                      controller: _controller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.blue,
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

                    ),
                  ],
                )
              )
            ),
            Container(
              height: 200,
              child: ListView(
                children: [
                  Text("Select Slot"),
                  Wrap(
                    spacing:5,
                    runSpacing: 3,
                    children: const [
                      // FilterChip(
                      //   label: Text("9:00 AM"),
                      //   backgroundColor: Colors.transparent,
                      //   shape: StadiumBorder(side: BorderSide()),
                      //   //showCheckmark: true,
                      //   selected: isSelectedChip,
                      //   onSelected: (selectedChip) {
                      //     print("selected Slot : $isSelectedChip");
                      //     setState(() {
                      //       isSelectedChip = selectedChip;
                      //     });
                      //     },
                      //   selectedColor: Colors.indigoAccent,
                      // ),
                      ChoiceChipWidget(chipName: "9:00 AM"),
                      ChoiceChipWidget(chipName: "10:00 AM"),
                      ChoiceChipWidget(chipName: "11:00 AM"),
                      ChoiceChipWidget(chipName: "12:00 AM"),
                      ChoiceChipWidget(chipName: "13:00 AM"),
                      ChoiceChipWidget(chipName: "14:00 AM"),
                      ChoiceChipWidget(chipName: "15:00 AM"),
                      ChoiceChipWidget(chipName: "16:00 AM"),
                      ChoiceChipWidget(chipName: "17:00 AM"),
                      ChoiceChipWidget(chipName: "18:00 AM"),
                      ChoiceChipWidget(chipName: "19:00 AM"),
                    ],
                  )
                ],
              )
            ),
            Container(
                height: 200,
                child: ListView(
                  children: [
                    Text("Slots"),
                    Wrap(
                      spacing:5,
                      runSpacing: 3,
                      children: const[
                        // FilterChip(
                        //   label: Text("1"),
                        //   backgroundColor: Colors.transparent,
                        //   shape: StadiumBorder(side: BorderSide()),
                        //   selectedColor: Colors.blue,
                        //   showCheckmark: true,
                        //   onSelected: (bool value) {print("selected Slot : ");},
                        // ),
                        ChoiceChipWidget(chipName: "1"),
                        ChoiceChipWidget(chipName: "2"),
                        ChoiceChipWidget(chipName: "3"),
                        ChoiceChipWidget(chipName: "4"),
                        ChoiceChipWidget(chipName: "5"),
                        ChoiceChipWidget(chipName: "6"),
                        ChoiceChipWidget(chipName: "7"),
                        ChoiceChipWidget(chipName: "8"),
                        ChoiceChipWidget(chipName: "9"),
                        ChoiceChipWidget(chipName: "10"),
                      ],
                    )
                  ],
                )
            ),
            SizedBox(height:20),
            Container(
              child: OutlinedButton(
                onPressed: (){},
                child: Text("Confirm"),
              )
            )

          ]
        ),
      )
    );
  }
}


class ChoiceChipWidget extends StatefulWidget {
  final String chipName;
  const ChoiceChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _ChoiceChipWidgetState createState() => _ChoiceChipWidgetState();
}
class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  var isChipSelected = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(widget.chipName),
        selected: isChipSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      backgroundColor: Colors.white24,
      onSelected: (isSelected ){
        setState(() {
          isChipSelected = isSelected;
        });
      },
      selectedColor:  Colors.blue,
      disabledColor: Colors.grey,
    );
  }
}

class ChipNumberWidget extends StatefulWidget {
  final String chipNumber;
  const ChipNumberWidget({Key? key, required this.chipNumber}) : super(key: key);

  @override
  _ChipNumberWidgetState createState() => _ChipNumberWidgetState();
}

class _ChipNumberWidgetState extends State<ChipNumberWidget> {
  var isSelectedChip = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        label: Text(widget.chipNumber),
      shape: StadiumBorder(side: BorderSide()),
      //showCheckmark: true,
      selected: isSelectedChip,
      onSelected: (selectedChip) {
        print("selected Slot : $isSelectedChip");
        setState(() {
          isSelectedChip = selectedChip;
        });
        },
      selectedColor: Colors.blue,
    );
  }
}



