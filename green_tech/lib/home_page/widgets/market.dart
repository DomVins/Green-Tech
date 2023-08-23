import 'package:flutter/material.dart';
import 'package:green_tech/products_page/product.dart';


class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Product Categories',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.52,
          child: ListView(scrollDirection: Axis.vertical, children: [
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Product(product: "Tomatoes"))));
              }),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(120),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Stack(children: [
                    Image(
                        width: MediaQuery.of(context).size.width * 0.90,
                        fit: BoxFit.cover,
                        image: const AssetImage("assets/t12.jpeg")),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: const Text(
                            'Tomatoes',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 253, 202),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                        builder: ((context) => Product(product: "Peper"))));
              }),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(120),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Stack(children: [
                    Image(
                        width: MediaQuery.of(context).size.width * 0.90,
                        fit: BoxFit.cover,
                        image: const AssetImage("assets/t5.jpeg")),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: const Text(
                            'Peper',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 253, 202),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                            Product(product: "Black Peper"))));
              }),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(120),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Stack(children: [
                    Image(
                        width: MediaQuery.of(context).size.width * 0.90,
                        fit: BoxFit.cover,
                        image: const AssetImage("assets/t6.jpeg")),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: const Text(
                            'Black Peper',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 253, 202),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                        builder: ((context) => Product(product: "Rice"))));
              }),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(120),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Stack(children: [
                    Image(
                        width: MediaQuery.of(context).size.width * 0.90,
                        fit: BoxFit.cover,
                        image: const AssetImage("assets/t13.jpeg")),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: const Text(
                            'Rice',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 253, 202),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
      ],
    );
  }
}
