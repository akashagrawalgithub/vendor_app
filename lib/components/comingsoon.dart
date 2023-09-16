import "package:flutter/material.dart";

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

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
              child: Image.network(
                  "https://media.discordapp.net/attachments/752703729802936390/1115684004633526354/image_processing20210907-24576-l5mbkr.gif"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Coming Soon",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We are working on this section.\n Thank you for waiting.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
