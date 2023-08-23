import 'package:flutter/material.dart';
import 'package:green_tech/home_page/widgets/drawer.dart';
import 'package:green_tech/home_page/widgets/home_elements.dart';
import 'package:green_tech/home_page/widgets/market.dart';
import 'package:green_tech/home_page/widgets/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700.withBlue(30),
      key: _key,
      drawer: const NavDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade900.withBlue(10)),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              margin: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 11),
                    child: InkWell(
                      focusColor: Colors.black,
                      borderRadius: BorderRadius.circular(22),
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.menu_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                  Text('Green Tech',
                      style: TextStyle(
                          color: Colors.green.shade900.withBlue(10),
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.7)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(4.3),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(22),
                      onTap: () {
                        //_key.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.person,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.4,
              margin: const EdgeInsets.symmetric(horizontal: 13),
              decoration: BoxDecoration(
                  color: Colors.green.shade200.withBlue(50),
                  borderRadius: BorderRadius.circular(2)),
            ),
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 30, 136, 37)
                        .withBlue(20)
                        .withOpacity(1),
                    const Color.fromARGB(255, 146, 194, 148)
                        .withBlue(20)
                        .withOpacity(0.75),
                    const Color.fromARGB(255, 62, 138, 63)
                        .withBlue(10)
                        .withOpacity(0.5)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: (selectedIndex == 0)
                    ? const HomeElements()
                    : (selectedIndex == 1)
                        ? const Market()
                        : const Services()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 47, 153, 54).withBlue(10),
          selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Market Place',
              icon: Icon(Icons.money_rounded),
            ),
            BottomNavigationBarItem(
                label: 'Services', icon: Icon(Icons.room_service_rounded)),
          ]),
    );
  }
}
