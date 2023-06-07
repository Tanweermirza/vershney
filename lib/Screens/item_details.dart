import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vershney/Screens/third_screen.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List previousOrderList = [
      {
        "image": "Ellipse8.png",
        "title": "Safola Soya",
        "subtitle": "Chunks",
      },
      {
        "image": "Ellipse6.png",
        "title": "Tata Pink",
        "subtitle": "Salt",
      },
      {
        "image": "Ellipsetoor.png",
        "title": "Tata",
        "subtitle": "Toor Dal",
      },
      {
        "image": "Ellipserise.png",
        "title": "Dawat",
        "subtitle": "Rozana Rice",
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Ellipse1.png'),
                  radius: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Your Product",
                                  focusColor: Colors.green,
                                  suffixIcon: Icon(Icons.qr_code_2),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Product",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(237, 143, 3, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Tata Pink Salt",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                      items: [
                        'Rectangle7.png',
                        'Rectangle8.png',
                        'Rectangle9.png'
                      ].map((e) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Image.asset(
                              "assets/images/$e",
                              fit: BoxFit.cover,
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 150,
                        viewportFraction: 0.327,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: true,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.1,
                        scrollDirection: Axis.horizontal,
                      )),
                  const SizedBox(
                    height: 26.0,
                  ),
                  const Text(
                    "Deal Price",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(237, 143, 3, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "-20%",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Rs.96",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  const Text(
                    "M.R.P: Rs 120",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "(Your are Saving Rs 24)",
                    style: TextStyle(fontSize: 14, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    "Product Details",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(237, 143, 3, 1),
                                    ),
                                  ),
                                ),
                                Icon(Icons.expand_circle_down_outlined)
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    size: 7,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      text: 'Authentic & Pure::',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Tata Salt Rock Salt is sourced directly from the pristine mountain ranges and brought to your kitchen',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 22, 39, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    size: 7,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      text: 'With Natural MINERALS:',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Tata Rock Salt has natural minerals like calcium, potassium and magnesium.',
                                          style: TextStyle(
                                            color: Color.fromRGBO(1, 22, 39, 1),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    size: 7,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      text: 'FLAVOURFUL TWIST:',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Enjoy a fresh burst of flavor in every meal with Tata Salt Rock Salt',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 22, 39, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    size: 7,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      text: 'AMAZING DISHES::',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Add Tata Rock Salt to your day to day meals or to enhance fasting foods.',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 22, 39, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.circle,
                                    size: 7,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      text: 'CONVENIENT PACKAGING:',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'It comes in a convenient pouch.',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 22, 39, 1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Product Details",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(237, 143, 3, 1),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.expand_circle_down_outlined,
                                color: Color.fromRGBO(237, 143, 3, 1),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "View Support Details",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(237, 143, 3, 1),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromRGBO(237, 143, 3, 1),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Select Quantity",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Maximum 10 Quantity Per Order",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(237, 143, 3, 1),
                                ),
                                child: const Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(237, 143, 3, 1),
                                ),
                                child: const Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => ThirdScreen())));
                          },
                          child: Container(
                            height: 60,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(237, 143, 3, 1),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Add to Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(237, 143, 3, 1),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(237, 143, 3, 1),
                          ),
                          child: const Center(
                              child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Recommonded Products",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(237, 143, 3, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Image.asset(
                                  'assets/images/${previousOrderList[index]['image']}'),
                            ),
                            Text(
                              previousOrderList[index]['title'].toString(),
                              style: const TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              previousOrderList[index]['subtitle'].toString(),
                              style: const TextStyle(
                                  fontSize: 10.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
