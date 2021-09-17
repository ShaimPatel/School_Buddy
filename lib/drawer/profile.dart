import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#013334'),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                color: HexColor("#013334"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 60.0,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PERSONAL INFO",
                            style: TextStyle(
                              color: HexColor(
                                "#013334",
                              ),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.edit_outlined,
                            color: HexColor("#013334"),
                            size: 18.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: Card(
                            color: HexColor("#FFF5F5F5"),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        'Contact No :',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        ' 9616277301 ',
                                        style: TextStyle(
                                            color: HexColor("#013334")),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 10,
                                  color: HexColor("#FFBDBDBD"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        'Email ID :',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        ' abc@gmail.com ',
                                        style: TextStyle(
                                            color: HexColor("#013334")),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 10,
                                  color: HexColor("#FFBDBDBD"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        'School Name :',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        ' SCP Inter College ',
                                        style: TextStyle(
                                            color: HexColor("#013334")),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 10,
                                  color: HexColor("#FFBDBDBD"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        'Session :',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        ' 2020 -2021 ',
                                        style: TextStyle(
                                            color: HexColor("#013334")),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08,
                right: 20.0,
                left: 20.0),
            child: SizedBox(
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              child: const Card(
                color: Colors.white,
                elevation: 4.0,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.delete_forever,
                    size: 100.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
