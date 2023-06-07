import 'package:flutter/material.dart';
import 'package:vershney/Screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
  List offersList = [
    {
      "image": "Ellipsemega.png",
      "title": "Spectacular",
      "subtitle": "Deals",
    },
    {
      "image": "Ellipse5.png",
      "title": "Get Extra",
      "subtitle": "5% Off",
    },
    {
      "image": "Ellipse20.png",
      "title": "Get Flat",
      "subtitle": "20% Off",
    },
    {
      "image": "Ellipse3.png",
      "title": "Get Extra",
      "subtitle": "10% Off",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 143, 3, 1),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 40.0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse1.png'),
                        radius: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Shivam Kumar Vershney",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "shivamvershney30@gmail.com",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "+91 7983872298",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Your Product",
                                  focusColor: Colors.green,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "My Wallet Balance",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(237, 143, 3, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Rs. 2,500",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 231, 231),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const ListTile(
                                  leading: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  title: Text(
                                    "Add Money\n To Wallet",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Expanded(
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 235, 231, 231),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const ListTile(
                                  leading: Icon(
                                    Icons.wallet_giftcard_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  title: Text("My Wallet \nStatement"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "My Previous Orders",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(237, 143, 3, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemCount: previousOrderList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  if (previousOrderList[index]['title'] ==
                                      'Tata Pink') {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SecondScreen(index: 1)));
                                  }
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Image.asset(
                                          'assets/images/${previousOrderList[index]['image']}'),
                                    ),
                                    Text(
                                      previousOrderList[index]['title']
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      previousOrderList[index]['subtitle']
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "My Offers & Details",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(237, 143, 3, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        GridView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemCount: offersList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Image.asset(
                                          'assets/images/${offersList[index]['image']}'),
                                    ),
                                    Text(
                                      offersList[index]['title'],
                                      style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      offersList[index]['subtitle'],
                                      style: const TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        Stack(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(245, 244, 246, 1),
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.settings_outlined,
                                            size: 30.0,
                                            color: Colors.black,
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "Settings",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.shopping_cart_outlined,
                                            size: 30.0,
                                            color: Colors.black,
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "My Cart",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width * 0.35,
                              top: 5.0,
                              child: const CircleAvatar(
                                radius: 55.0,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width * 0.366,
                              top: 10.0,
                              child: const CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                                child: Icon(
                                  Icons.qr_code_2,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
