import 'package:sqflite/sqflite.dart';

final String idConlumn = "idConlumn";
final String nameConlumn = "nameConlumn";
final String emailConlumn = "emailConlumn";
final String phoneConlumn = "phoneConlumn";
final String imgConlumn = "imgConlumn";

class ContactHelper{

}

class Contact{
  int id;
  String name;
  String email;
  String phone;
  String img;

  Contact.fromMap(Map map){
    id = map[idConlumn];
    name = map[nameConlumn];
    email = map[emailConlumn];
    phone = map[phoneConlumn];
    img = map[imgConlumn];
  }

  Map toMap(){
    Map<String, dynamic> map = {
      nameConlumn: name,
      emailConlumn: emailConlumn,
      phoneConlumn: phoneConlumn,
      imgConlumn: img,
    };
    if(id != null){
      map[idConlumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }
}