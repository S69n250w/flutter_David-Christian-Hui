import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DateTime selectedDate;
  late Color selectedColor;
  late Color newColor;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    selectedColor = Colors.blue;
    newColor = selectedColor;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Interactive Widgets"),
        ),
        body: /*Padding(
          padding: const EdgeInsets.all(20.0),
          child:*/ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                // final selectDate = await showDatePicker(
                //   context: context,
                //   initialDate: selectedDate,
                //   firstDate: DateTime(1990),
                //   lastDate: DateTime(selectedDate.year + 5),
                // );

                setState(() {
                  if(selectDate != null) {
                    selectedDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(selectedDate)),

              Row(
                children: [
                  Text("Date: "),
                ],
              ),
              InkWell(
                onTap: () => _selectDate(context),
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  // decoration: BoxDecoration(
                  //   border: Border.all(),
                  //   borderRadius: BorderRadius.circular(5.0),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('dd-MM-yyyy').format(selectedDate),
                        // '${selectedDate.toLocal()}'.split(' ')[0],
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Select",
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(DateFormat('dd-MM-yyyy').format(selectedDate)),
              SizedBox(
                height: 20
              ),
              Text("Select Color: "),
              SizedBox(height: 10),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: selectedColor,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: TextButton(
                  onPressed: () async {
                    newColor = await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Select Color"),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: selectedColor,
                            onColorChanged: (color) {
                              newColor = color;
                            },
                            pickerAreaHeightPercent: 0.8,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel")
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(newColor);
                            },
                            child: Text("Select")
                          ),
                        ],
                      ),
                    );
                    setState(() {
                      selectedColor = newColor;
                    });
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        // ),
      ),
    );
  }
}