import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
