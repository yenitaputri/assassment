import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String personalid;
  final String address;
  final String chooseadate;
  // Add other fields you want to display.

  Detail(
      {required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.personalid,
      required this.address,
      required this.chooseadate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LIST PERSONAL DATA ')),
      body: Column(
        children: [
          Text('Full Name: $fullName'),
          Text('Email: $email'),
          Text('Phone: $phoneNumber'),
          Text('Id: $personalid'),
          Text('Address: $address'),
          Text('Date: $chooseadate')
          // Add other result fields here.
        ],
      ),
    );
  }
}
