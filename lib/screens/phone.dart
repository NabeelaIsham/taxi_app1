import 'package:flutter/material.dart';
import 'package:taxi_app1/screens/request.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    number.text = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Us'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
              child: Form(
                key: _formkey,
                child: Container(
                  child: TextFormField(
                    controller: number,
                    maxLength: 10,
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Number is required';
                      }

                      if (text.length < 10) {
                        return 'Maximum 10 numbers Required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        suffixIcon: IconButton(
                            onPressed: () {
                              number.text = '';
                            },
                            icon: const Icon(Icons.clear)),
                        hintText: 'Phone Number'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                  onPressed: () {
                    _formkey.currentState!.validate();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Request();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent.shade400,

                    padding: const EdgeInsets.all(20.0),
                    // Background color
                  ),
                  child: const Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
