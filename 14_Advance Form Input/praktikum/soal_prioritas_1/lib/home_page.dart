// import 'dart:ffi';

// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _selectedDate = DateTime.now();

//   Future<void> _selectedDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101)
//     );

//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Interactive Widgets"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text(
//                 "${_selectedDate.toLocal()}".split(' ')[0],
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               ElevatedButton(
//                 onPressed: () => _selectDate(context),
//                 child: Text('Select date')
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: DatePickerExample()));



import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Date: "),
//               InkWell(
//   onTap: () {
//     // Aksi yang dijalankan ketika di-tap
//     print('Tapped!');
//   },
//   splashColor: Colors.blue, // Warna gelombang saat di-tap
//   highlightColor: Colors.red, // Warna highlight saat di-tap
//   child: Container(
//     padding: EdgeInsets.all(16.0),
//     child: Text('Tap Me'),
//   ),
// )

              InkWell(
                onTap: () => _selectDate(context),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${selectedDate.toLocal()}'.split(' ')[0],
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.calendar_today)
                    ],
                  ),
                ),
              ),
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
        ),
      ),
    );
  }
}


// class RippleEffectExample extends StatefulWidget {
//   @override
//   _RippleEffectExampleState createState() => _RippleEffectExampleState();
// }

// class _RippleEffectExampleState extends State<RippleEffectExample> {
//   double containerSize = 100.0;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Aksi yang dijalankan ketika di-tap
//         print('Tapped!');
//         // Mengubah ukuran Container saat di-tap
//         setState(() {
//           containerSize = 120.0;
//         });
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         width: containerSize,
//         height: containerSize,
//         color: Colors.blue,
//         child: Center(
//           child: Text('Tap Me'),
//         ),
//       ),
//     );
//   }
// }