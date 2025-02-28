import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CONTACT US",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

// full names
          SizedBox(
            height: 30,
          ),
          Text("Full names"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Ex: John doe",
                  icon: Icon(Icons.person_2_outlined)),
            ),
          ),

          // email
          SizedBox(
            height: 30,
          ),
          Text("Email adress"),
          TextField(),

          // full names
          SizedBox(
            height: 30,
          ),

          Text("Message"),
          TextField(),
        ],
      ),
    );
  }
}
