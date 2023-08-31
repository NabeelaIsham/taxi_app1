import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:taxi_app1/screens/phone.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String _selectedLanguage = 'English';

  final List<String> _languages = ['English', 'Tamil', 'Sinhala'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: Center(
                child: Container(
                  width: 171,
                  height: 163,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/taxi mate image.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            const Text(
              'WELCOME BACK',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            const Text(
              'Login to Continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const phone();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent.shade400,

                  padding: const EdgeInsets.all(20.0),
                  // Background color
                ),
                child: const Text(
                  'Login With Phone Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 200.0,
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(206, 226, 223, 223),
                    shadows: const [BoxShadow(color: Colors.black)],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                  ),
                  child: TextButton(
                    style: const ButtonStyle(),
                    onPressed: () {},
                    child: const Text(
                      'REGISTER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 150.0,
                    height: 40.0,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Ionicons.logo_google,
                          color: Colors.green,
                        ),
                        label: const Text(
                          'Google',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 150.0,
                    height: 40.0,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        label: const Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 2.0,
            ),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: _languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By Continuing you agree to our',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' privacy policy',
                    style: TextStyle(
                      color: Color(0xFF0B5BF7),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
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
