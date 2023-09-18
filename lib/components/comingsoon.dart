import "package:flutter/material.dart";

class ComingSoon extends StatefulWidget {
  final String pagename;
  const ComingSoon({Key? key, required this.pagename}) : super(key: key);

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
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
              child: Image.asset("images/comingsoonimage.gif"),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Coming Soon ${widget.pagename}",
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
