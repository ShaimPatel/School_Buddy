import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:school_buddy/Home_Pages/drawer_page.dart';
import 'package:school_buddy/services/liekapi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late int _selectedIndex;
  List<dynamic> btnState = [];
  // ignore: prefer_typing_uninitialized_variables
  late final userid;
  // ignore: prefer_typing_uninitialized_variables
  late final email;
  bool isLiked = false;
  final double size = 20;
  List<dynamic> schoollist = [];

// ! There are GetData From server...
  Future<dynamic> _schoolDetails() async {
    String url =
        'https://scsy.in/schoolbuddy/schoolbuddy/public/api/App/schoollist';
    final http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final getDataResponse = response.body;
      var list = json.decode(getDataResponse);
      // print(list['Like'][0]);
      setState(() {
        if (list['success'] == true && list['message'] == "School found") {
          schoollist = list['data'];
          // setting all button like state to 0
          btnState.length = schoollist.length;
          for (var i = 0; i < schoollist.length; i++) {
            btnState[i] = false;
          }
        }
        // setState(() {});
      });
    } else {
      throw Exception('Feaild To Load...!');
    }
  }

//! Init  shoolDetails...
  @override
  void initState() {
    super.initState();
    _schoolDetails();
  }

  final appbar = AppBar(
    backgroundColor: HexColor('#013334'),
    elevation: 0,
    title: Image.asset(
      'assets/splash.png',
      height: 40.0,
      width: 100,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final Map argument = ModalRoute.of(context)!.settings.arguments as Map;
    final userid = argument['id'].toString();
    // print(userid);
    // ignore: unused_local_variable
    final email = argument['email'].toString();
    //print(userid + " =" + email);

    var allHeight =
        MediaQuery.of(context).size.height - appbar.preferredSize.height;
    var allWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerHomePage(),
      body: SizedBox(
        height: allHeight,
        width: allWidth,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: HexColor("#013334"),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, bottom: 4.0),
                              child: TextFormField(
                                autofocus: false,
                                showCursor: true,
                                decoration: const InputDecoration(
                                  hintText: 'Search Country ',
                                  border: InputBorder.none,
                                ),
                                cursorColor: HexColor("#013334"),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor("#FFCCFF90"),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.search,
                              size: MediaQuery.of(context).size.height * 0.05,
                              color: HexColor("#013334"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Location - ",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Lucknow-33102",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //!End Of Search Bar..
            //There Are City or Location
            Flexible(
              flex: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Card(
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 4.0),
                            child: TextFormField(
                              autofocus: false,
                              showCursor: true,
                              decoration: const InputDecoration(
                                hintText: 'Country, City  ',
                                border: InputBorder.none,
                              ),
                              cursorColor: HexColor("#013334"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Card(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            Icons.filter_center_focus,
                            size: MediaQuery.of(context).size.height * 0.05,
                            color: HexColor("#013334"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: schoollist.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  width:
                                      MediaQuery.of(context).size.height * 0.17,
                                  color: Colors.green,
                                  child: Image.asset(
                                    'assets/scpic.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          schoollist[index]['name'].toString(),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                        Text(
                                          schoollist[index]['id'].toString(),
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.55,
                                          alignment: Alignment.bottomRight,
                                          child: IconButton(
                                            iconSize: 18.0,
                                            icon: const Icon(
                                              Icons.favorite,
                                            ),
                                            color: (btnState[index] == false)
                                                ? Colors.grey
                                                : Colors.red,
                                            onPressed: () {
                                              setState(() {
                                                btnState[index] =
                                                    (btnState[index] == false)
                                                        ? true
                                                        : false;
                                              });
                                              _onSelected(
                                                  schoollist[index]['id'],
                                                  btnState[index],
                                                  userid);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  _onSelected(int index, bool state, String userid) async {
    // print(index);
    var likedata = {
      'user_id': userid,
      'school_id': index,
      'is_like': state,
    };
    var res = await SendLikeApi().postData(likedata, 'like');
    // print(res.body);
    var response = json.decode(res.body);
    // print(response);
    if (response['success'] == true) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(response['message']),
          );
        },
      );
    } else {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(response['message']),
          );
        },
      );
      // ignore: avoid_print
      // print(body['message']);
    }
  }
}
