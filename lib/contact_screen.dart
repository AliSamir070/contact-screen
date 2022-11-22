import 'package:contact_screen_c7/contact.dart';
import 'package:contact_screen_c7/contact_item.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  Contact contact1 = Contact('', '', false);

  Contact contact2 = Contact('', '', false);

  Contact contact3 = Contact('', '', false);

  String nameField = '';
  String phoneField = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Contacts Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                onChanged: (value){
                  nameField = value;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter your name here",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  suffixIcon: Icon(Icons.edit , color: Colors.blue,)
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: phoneController,
                onChanged: (value){
                  phoneField = value;
                },
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter your phone here",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  suffixIcon: Icon(Icons.call , color: Colors.blue,)
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          if(nameField.isNotEmpty && phoneField.isNotEmpty){
                            if(!contact1.isVisible){
                              contact1.name = nameField;
                              contact1.phone = phoneField;
                              contact1.isVisible = true;
                              nameController.text = "";
                              phoneController.text = "";
                              nameField = '';
                              phoneField = '';
                            }else if(!contact2.isVisible){
                              contact2.name = nameField;
                              contact2.phone = phoneField;
                              contact2.isVisible = true;
                              nameController.text = "";
                              phoneController.text = "";
                              nameField = '';
                              phoneField = '';
                            }else if(!contact3.isVisible){
                              contact3.name = nameField;
                              contact3.phone = phoneField;
                              contact3.isVisible = true;
                              nameController.text = "";
                              phoneController.text = "";
                              nameField = '';
                              phoneField = '';
                            }
                          }
                          setState((){});

                        },
                        child: Text('Add',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14
                        ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: (){
                          if(contact3.isVisible){
                            contact3.name = '';
                            contact3.phone = '';
                            contact3.isVisible = false;
                          }else if(contact2.isVisible){
                            contact2.name = '';
                            contact2.phone = '';
                            contact2.isVisible = false;
                          }else if(contact1.isVisible){
                            contact1.name = '';
                            contact1.phone = '';
                            contact1.isVisible = false;
                          }
                          setState((){
                          });
                        },
                        child: Text('Delete',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black
                        ),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),

                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              ContactItem(contact1),
              SizedBox(height: 20,),
              ContactItem(contact2),
              SizedBox(height: 20,),
              ContactItem(contact3)
            ],
          ),
        ),
      ),
    );
  }
}
