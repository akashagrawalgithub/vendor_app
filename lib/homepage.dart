import "package:flutter/material.dart";
import "package:vendor_app/components/comingsoon.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screen = [
    ComingSoon(pagename: "Home"),
    ComingSoon(
      pagename: "Cart",
    ),
    ComingSoon(
      pagename: "payment",
    ),
    ComingSoon(
      pagename: "item",
    ),
    ComingSoon(
      pagename: "setting",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: const Color.fromRGBO(21, 89, 126, 1),
            ),
            child: NavigationBar(
              backgroundColor: Color.fromRGBO(255, 252, 243, 1),
              height: 65,
              selectedIndex: index,
              onDestinationSelected: (index) => setState(
                () => this.index = index,
              ),
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: index == 0
                        ? Colors.white
                        : Color.fromRGBO(21, 89, 126, 1),
                    size: 30,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: index == 1
                        ? Colors.white
                        : Color.fromRGBO(21, 89, 126, 1),
                    size: 30,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.payments_outlined,
                    color: index == 2
                        ? Colors.white
                        : Color.fromRGBO(21, 89, 126, 1),
                    size: 30,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.local_pizza_outlined,
                    color: index == 3
                        ? Colors.white
                        : Color.fromRGBO(21, 89, 126, 1),
                    size: 30,
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.settings,
                    color: index == 4
                        ? Colors.white
                        : Color.fromRGBO(21, 89, 126, 1),
                    size: 30,
                  ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(254, 179, 0, 1),
          child: const Icon(Icons.add),
        ),
        body: screen[index],
      ),
    );
  }
}
