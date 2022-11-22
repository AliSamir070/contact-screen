import 'package:contact_screen_c7/contact.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  Contact contact;
  ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: contact.isVisible,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${contact.name}',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
            SizedBox(height: 10,),
            Text('Phone: ${contact.phone}',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ],
        ),
      ),
    );
  }
}
