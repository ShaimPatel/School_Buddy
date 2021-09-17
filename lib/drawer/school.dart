import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_buddy/Home_Pages/drawer_page.dart';
import 'package:school_buddy/Home_Pages/search_bar.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({Key? key}) : super(key: key);

  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  final appbar = AppBar(
    backgroundColor: HexColor('#013334'),
    elevation: 0,
    title: Image.asset(
      'assets/splash.png',
      height: 30.0,
      width: 100,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerHomePage(),
      body: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    appbar.preferredSize.height) *
                0.15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: HexColor("#013334"),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: const SearchBarHomePage(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18.0, left: 10, right: 10, bottom: 14.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/scpic.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: HexColor("#013334"),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: const [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(top: 13.0),
                            child: Text(
                              "Al Taj Inetrnational School",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          flex: 2,
                          fit: FlexFit.tight,
                        ),
                        Flexible(
                          child: Center(
                            child: Text(
                              "1946 Jahinah, As Sulimaniyah, Riyadh 12232, Saudi Arabia",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                          flex: 2,
                          fit: FlexFit.tight,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 5, right: 30, left: 30),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: TextFormField(
                            autofocus: false,
                            showCursor: true,
                            decoration: const InputDecoration(
                              hintText: 'Search Alumni',
                              border: InputBorder.none,
                            ),
                            cursorColor: HexColor("#013334"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: TextFormField(
                            autofocus: false,
                            showCursor: true,
                            decoration: const InputDecoration(
                              hintText: 'Country , City',
                              border: InputBorder.none,
                            ),
                            cursorColor: HexColor("#013334"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 30,
                      bottom: 10,
                      right: 30,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: HexColor("#c4dc34"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/man.png',
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Abid Rahman ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'AI Taj International School',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Class 12/A Session : 2020-2021',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: HexColor(
                                        "#013334",
                                      ),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Icon(
                              Icons.message,
                              color: HexColor("#013334"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 30,
                      bottom: 10,
                      right: 30,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: HexColor("#c4dc34"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/man.png',
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Abid Rahman ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'AI Taj International School',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Class 12/A Session : 2020-2021',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: HexColor(
                                        "#013334",
                                      ),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Icon(
                              Icons.message,
                              color: HexColor("#013334"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 30,
                      bottom: 10,
                      right: 30,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: HexColor("#c4dc34"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/man.png',
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Abid Rahman ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'AI Taj International School',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: HexColor(
                                          "#013334",
                                        ),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Class 12/A Session : 2020-2021',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: HexColor(
                                        "#013334",
                                      ),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Icon(
                              Icons.message,
                              color: HexColor("#013334"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
