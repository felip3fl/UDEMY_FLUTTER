import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();
  List<Contact> contacts = List();

  @override
  void initState() {
    super.initState();
    helper.getAllContacts().then((list){
      setState(() {
        contacts = list;
      });
    });
  }
  
/*
  @override
  void initState() {
    super.initState();
    Contact c = Contact();
    c.name = "Felipe Lima";
    c.email = "felip6.fl@gmail.com";
    c.phone = "78956547";
    c.img = "imgTest";

    helper.saveContact(c);

    helper.getAllContacts().then((list){
      print(list);
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemBuilder: (context, index){

        },
        itemCount: contacts.length,
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
