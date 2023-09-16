import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_app/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _mobilenumeber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                'images/loginimage.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Text('Image not found');
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                text: "Let's  ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: const Color.fromRGBO(254, 179, 0, 1),
                ),
                children: [
                  TextSpan(
                    text: "Bunk  ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xFF15597E),
                    ),
                  ),
                  TextSpan(
                    text: "Again",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your personal meetup App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Login with OTP or Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  controller: _mobilenumeber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number (Without +91)",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 7, 52, 75),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(
                          250, 84, 87, 1)), // Set the background color to red
                ),
                onPressed: () {
                  Get.to(() => HomePage());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
