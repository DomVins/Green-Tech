import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeElements extends StatefulWidget {
  const HomeElements({Key? key}) : super(key: key);

  @override
  State<HomeElements> createState() => _HomeElementsState();
}

class _HomeElementsState extends State<HomeElements> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.34,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'Our Products and Services',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.5,
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
                  child: ImageSlideshow(
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.white,
                    children: [
                      Image.asset(
                        'assets/t11.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t12.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t2.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t3.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t14.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t15.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t17.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t18.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t16.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t13.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t4.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/t5.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ],
                    autoPlayInterval: 6000,
                    isLoop: true,
                  ),
                )),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'How to Make a Purchase',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.20,
              child: const Text(
                  "You can  purchase our products by navigating to the Market Place from the buttom of your screen and then selecting the desired product. This purchased products can be delivered to the buyer on demand.",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 253, 202),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'About Us',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.85,
              child: const Text(
                  "GreenTech is an Agricultural Company centered on creating a reliable link between the producers and buyers of Agricultural Products all around Nigeria.\n\nIt was founded by Engr. Jesse Avachia and is currently being run by a team of board members\n\n\nYou can contact us via the following channels:\n\nemail: greentech@gmail.com\nfacebook: Green Tech\nhotlines: 08100000000, 09100000000",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 253, 202),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
