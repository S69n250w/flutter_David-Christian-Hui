import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  List<Map<String, String>> contacts = [];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: Text('Contacts'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Icon(
                    Icons.phone_android,
                    size: 50.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Here is where you can find your contacts',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Icon(
                          Icons.mobile_friendly,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 15),
                        Title(
                          color: Colors.black,
                          child: Text(
                            "Create New Contacts",
                            style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                        SizedBox(height: 20),
                        ContactsListWidget(contacts: contacts),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      fillColor: Colors.purple[50],
                      filled: true,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        fillColor: Colors.purple[50],
                        filled: true,
                        labelStyle: TextStyle(fontWeight: FontWeight.w500)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Tambahkan dari formulir ke dalam daftar kontak
                          contacts.add({
                            'title': _nameController.text,
                            'subtitle': _phoneController.text
                          });

                          // Tampilkan data kontak di console
                          print(contacts);

                          setState(() {
                            contacts;
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'New Contact: ${_nameController.text}, ${_phoneController.text}'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(120, 45),
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Submit',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
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

class ContactsListWidget extends StatelessWidget {
  final List<Map<String, String>> contacts;

  ContactsListWidget({required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Title(
          color: Colors.black,
          child: Text(
            'List Contacts',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 10),
        // ListView untuk menampilkan daftar kontak
        ListView.builder(
          shrinkWrap: true,
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple[100],
                child: Text(
                  contacts[index]['title']![0].toUpperCase(),
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              title: Text(contacts[index]['title']!.toUpperCase()),
              subtitle: Text(contacts[index]['subtitle']!),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      print('Edit: ${contacts[index]['title']}');
                    }, 
                    icon: Icon(Icons.mode_edit_outlined)
                  ),
                  IconButton(onPressed: () {
                    print('Delete: ${contacts[index]['title']}');
                  },
                  icon: Icon(Icons.delete_outline_outlined)
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
