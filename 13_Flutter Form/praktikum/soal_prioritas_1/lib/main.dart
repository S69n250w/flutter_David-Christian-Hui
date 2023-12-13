// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
 runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactsPage(),
    );
 }
}

class ContactsPage extends StatefulWidget {
 @override
 _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
 final _formKey = GlobalKey<FormState>();
 String _name = '';
 String _phone = '';

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Text('Here is where you can find your contacts'),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                 TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _name = value;
                      });
                    },
                 ),
                 TextFormField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _phone = value;
                      });
                    },
                 ),
                 SizedBox(height: 20),
                 ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('New Contact: $_name, $_phone'),
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
 }
}