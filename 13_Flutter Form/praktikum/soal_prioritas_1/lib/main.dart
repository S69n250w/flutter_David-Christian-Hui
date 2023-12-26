// sudah dengan Soal Prioritas 2 dan Soal Eksplorasi

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

  void _deleteContact(int index) {
    print('Delete: ${contacts[index]['title']!}');
    setState(() {
      contacts.removeAt(index);
    });
  }

  void _editContact(int index) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();

    //Inisialisasi controller dengan nilai yang ada
    nameController.text = contacts[index]['title']!;
    phoneController.text = contacts[index]['subtitle']!;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Contact'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'New Name'
                  ),
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'New Phone Number'
                  ),
                )
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel')
                ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: () {
                    // Lakukan sesutau dengan nilai yang telah diubah
                    setState(() {
                      // Update nilai di dalam list contacts
                      contacts[index]['title'] = nameController.text;
                      contacts[index]['subtitle'] = phoneController.text;

                      //Tutup dialog
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text('Save'),
                ),
              ],
            ),
          ],
        );
      }
    );
    print('Edit: ${contacts[index]['title']!}');
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
                        ContactsListWidget(
                          contacts: contacts,
                          onDelete: _deleteContact,
                          onEdit: _editContact,
                        ),
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
                        return 'Nama harus diisi';
                      }
                      
                      // Memastikan nama terdiri dari minimal 2 kata
                      List<String> words = value.split(' ');
                      if (words.length < 2) {
                        return 'Nama harus terdiri dari minimal 2 kata';
                      }

                      // Memastikan setiap kata dimulai dengan huruf kapital
                      for (String word in words) {
                        if (!RegExp(r'^[A-Z][a-z]*$').hasMatch(word)) {
                          return 'Setiap kata harus dimulai dengan huruf kapital';
                        }
                      }

                      // Memastikan nama tidak mengandung angka atau karakter khusus
                      if (RegExp(r'[0-9~`!@#%^&*()-+_=,.?{}<>/\;:"[]|]').hasMatch(value)) {
                        return'Nama tidak boleh mengandung angka atau karakter';
                      }

                      return null; // Validasi berhasil
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
                        return 'Nomor telepon harus diisi';
                      }

                      // Memastikan nomor telepon hanya terdiri dari angka saja
                      if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Nomor telepon harus terdiri dari angka saja';
                      }

                      // Memastikan panjang nomor telepon minimal 8 digit dan maksimal 15 digit
                      if (value.length < 8 || value.length > 15) {
                        return 'Panjang nomor telepon harus minimal 8 digit dan maksimal 15 digit';
                      }

                      //Memastikan nomor telepon dimulai dengan angka 0
                      if (!RegExp(r'^0').hasMatch(value)) {
                        return 'Nomor telepon harus dimulai dengan angka 0';
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
  final Function(int) onDelete;
  final Function(int) onEdit;

  ContactsListWidget({required this.contacts, required this.onDelete, required this.onEdit});

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
                  '${contacts[index]['title']![0].toUpperCase()}',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              title: Text(
                '${capitalizeWords(contacts[index]['title']!)}'
                // '${contacts[index]['title']!}'
              ),
              subtitle: Text(
                '${contacts[index]['subtitle']!}'
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (index < contacts.length) {
                        // Panggil fungsi onEdit saat tombol edit ditekan
                        onEdit(index);
                      }
                    }, 
                    icon: Icon(Icons.mode_edit_outlined)
                  ),
                  IconButton(
                    onPressed: () {
                      // Panggil fungsi onDelete saat tombol delete ditekan
                      onDelete(index);
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

// Fungsi untuk mengonversi teks
String capitalizeWords(String input) {
  if (input.isEmpty) {
    return input;
  }

  // Pisahkan input menjadi kata-kata
  List<String> words = input.split(' ');

  // Ubah setiap kata menjadi huruf kapital awal dan sisanya huruf kecil
  List<String> capitalizeWords = words.map((word) {
    if (word.isEmpty) {
      return word; // Biarkan string kosong jika ada
    }
    return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
  }).toList();

  // Gabungkan kata-kata yang telah diubah kembali mejadi satu string
  return capitalizeWords.join(' ');
}