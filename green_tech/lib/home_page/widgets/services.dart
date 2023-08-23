import 'package:flutter/material.dart';
import 'package:green_tech/sevrices_page/service.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Services',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        GestureDetector(
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        Service(serviceOption: "Direct Sales"))));
          }),
          child: Container(
            padding:
                const EdgeInsets.only(left: 25, right: 8, top: 10, bottom: 10),
            height: MediaQuery.of(context).size.height / 2.1,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * 0.60,
                decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(120),
                    borderRadius: BorderRadius.circular(25)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Stack(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Image(
                          height:
                              (MediaQuery.of(context).size.height / 2.1) - 20,
                          fit: BoxFit.cover,
                          image: const AssetImage("assets/t9.jpeg")),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: const Text(
                            'Direct Sales',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 253, 202),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.3,
                                backgroundColor: Color.fromARGB(57, 0, 0, 0)),
                          ),
                        ))
                  ]),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              Service(serviceOption: "Online Sales"))));
                }),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(120),
                      borderRadius: BorderRadius.circular(25)),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: Stack(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Image(
                            height:
                                (MediaQuery.of(context).size.height / 2.1) - 20,
                            fit: BoxFit.cover,
                            image: const AssetImage("assets/t8.jpeg")),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin:
                                const EdgeInsets.only(right: 10, bottom: 10),
                            child: const Text(
                              'Online Sales',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 253, 202),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.3,
                                  backgroundColor: Color.fromARGB(57, 0, 0, 0)),
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              Service(serviceOption: "Door Step Delivery"))));
                }),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(120),
                      borderRadius: BorderRadius.circular(25)),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: Stack(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Image(
                            height:
                                (MediaQuery.of(context).size.height / 2.1) - 20,
                            fit: BoxFit.cover,
                            image: const AssetImage("assets/t3.jpeg")),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin:
                                const EdgeInsets.only(right: 10, bottom: 10),
                            child: const Text(
                              'Door Step Delivery',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 253, 202),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.3,
                                  backgroundColor: Color.fromARGB(57, 0, 0, 0)),
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: 35, top: 25),
            child: const Text(
              'We are here to serve you better . . .',
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ))
      ],
    );
  }
}
