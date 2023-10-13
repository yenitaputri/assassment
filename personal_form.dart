import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _fullNameTextboxController = TextEditingController();
  final _emailTextboxController = TextEditingController();
  final _phoneNumberTextboxController = TextEditingController();
  final _personalIDTextboxController = TextEditingController();
  final _addressTextboxController = TextEditingController();
  final _dateTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonalForm(),
    );
  }
}

class PersonalForm extends StatefulWidget {
  @override
  _PersonalFormState createState() => _PersonalFormState();
}

class _PersonalFormState extends State<PersonalForm> {
  bool isPublishingChecked = false;

  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _personalidController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _chooseadateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Icon(Icons.description, size: 24), // Icon for description
                // SizedBox(width: 8),
                Text(
                  'PERSONAL FORM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(),
                Icon(Icons.description, size: 24), // Icon for description
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 10.0),
            Text("Full Name"),
            TextFormField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Enter Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Email"),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Enter your Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Phone Number"),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Enter Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Personal ID Number"),
            TextFormField(
              controller: _personalidController,
              decoration: InputDecoration(
                labelText: 'Value',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Address"),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Enter your text here',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Choose a Date"),
            TextFormField(
              controller: _chooseadateController,
              decoration: InputDecoration(
                labelText: 'Select Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today), // Calendar icon
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Checkbox(
                value: isPublishingChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isPublishingChecked = value!;
                  });
                },
              ),
              title: Text(
                "Publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String fullName = _fullNameController.text;
                String email = _emailController.text;
                String phoneNumber = _phoneNumberController.text;
                String personalid = _personalidController.text;
                String address = _addressController.text;
                String chooseadate = _chooseadateController.text;

                print('Full Name: $fullName');
                print('Email: $email');
                print('Nomor HP: $phoneNumber');
                print('Personal ID Number: $personalid');
                print('Address: $address');
                print('Choose a Date: $chooseadate');
                print(
                    'Publishing and Graphic Design Checkbox: $isPublishingChecked');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
