import "dart:developer";
import "package:flutter/material.dart";

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          // card design starts here
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return orderCard();
            },
          ),
        ),
      ),
    );
  }
}

Widget orderCard() {
  return Container(
    decoration: const BoxDecoration(),
    child: SingleChildScrollView(
      child: Card(
        elevation: 2,
        child: InkWell(
          onTap: () {
            print("order card tapped");
          },
          child: Container(
            width: double.infinity,
            color: Color(0xfffffcf3),
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Order: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "#203",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 14),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(254, 179, 0, 1),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Pending",
                              style: TextStyle(
                                color: Color.fromRGBO(254, 176, 0, 1),
                              ),
                            ),
                          ),
                        ], // Remove this extra closing parenthesis
                      ),
                    ),
                    const SizedBox(
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(21, 89, 126, 1),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "23 Feb 2021, 08:28PM",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          "https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=D1z4xPCs-qQIZyUqRcHrnsJSJy_YbUD9udOrXpilNpI=",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Food Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  child: Text(
                                    "Food descriptiondescription description description description description",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
