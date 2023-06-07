import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Supply Details",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(237, 143, 3, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Production",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Collections of the Raw Metrial",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/59255Raw.png"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Received raw salt for production",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 19/03/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Location : ABC, Salt Factory, Delhi",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Received Raw Meterial",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/59255RawSalt 2.png"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Raw Salt from Bhawnagar,Gujrat",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 19/03/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Loction : Gujrat",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      left: 10.0,
                      width: 5.0,
                      height: 220.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(237, 143, 3, 1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    const Positioned(
                        top: 14,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 17,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                    const Positioned(
                        top: 125,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 128,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Manufacturing",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Processed Salt",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/59255Raw.png"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Salt is processed & ready to supply",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 21/03/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Location : ABC, Salt Factory, Delhi",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          const Text(
                            "Packaging of Product",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/59255RawSalt3.png"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Salt is processed & ready to supply",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 19/03/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Location : ABC, Salt Factory",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      left: 10.0,
                      width: 5.0,
                      height: 220.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(237, 143, 3, 1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    const Positioned(
                        top: 14,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 17,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                    const Positioned(
                        top: 125,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 128,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Delivered to Store",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/59255RawSalt 4.png"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Delivered to Kanta General Store",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 28/03/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Location : Karol Bagh, Delhi",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Delivered to Customer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Delivered to Mr. Shivam Varshney",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Date : 07/04/2023",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                    Text(
                                      "Location : Karol Bagh, Delhi",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(1, 22, 39, 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      left: 10.0,
                      width: 5.0,
                      height: 240.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(237, 143, 3, 1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    const Positioned(
                        top: 14,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 17,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                    const Positioned(
                        top: 125,
                        left: 5.0,
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.white,
                        )),
                    const Positioned(
                        top: 128,
                        left: 8.0,
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color.fromRGBO(237, 143, 3, 1),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
