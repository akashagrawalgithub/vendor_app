import "dart:developer";

import "package:flutter/material.dart";

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Image.asset("images/errorpageimage.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "404",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Something Went Wrong",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                log("Back to Home Clicked");
              },
              child: const Text(
                "Back to Home",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(252, 156, 103, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
