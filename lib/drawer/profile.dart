import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool agree = false;
  bool isvisibileSc = false;
  bool isvisibileDi = false;
  bool isvisibileUg = false;
  bool isvisibilePg = false;

  bool isStreachDropdownSc = false;
  bool isStreachDropdownDi = false;
  bool isStreachDropdownUg = false;
  bool isStreachDropdownPg = false;
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
        children: <Widget>[
          // Max Size
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "PERSONAL INFO",
                          style: TextStyle(
                            letterSpacing: 2.0,
                            color: HexColor(
                              "#013334",
                            ),
                            fontSize: 15.0,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Card(
                      color: HexColor("#FFF5F5F5"),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Full Name :',
                                  style: TextStyle(
                                    letterSpacing: 2.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' Abid Rahman ',
                                  style: TextStyle(color: HexColor("#013334")),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'About :',
                                  style: TextStyle(
                                      letterSpacing: 2.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const AutoSizeText(
                                    'A String tool long to display without extreme scaling or overflow.',
                                    maxLines: 4,
                                    overflowReplacement:
                                        Text('Sorry String too long'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'User Name :',
                                  style: TextStyle(
                                    letterSpacing: 2.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' Abid Rahman ',
                                  style: TextStyle(color: HexColor("#013334")),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Email ID :',
                                  style: TextStyle(
                                    letterSpacing: 2.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Alex@gmail.com',
                                  style: TextStyle(color: HexColor("#013334")),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Contact No  :',
                                  style: TextStyle(
                                    letterSpacing: 2.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '+91 9512667867',
                                  style: TextStyle(color: HexColor("#013334")),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //!
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "EDUCATIONAL INFO",
                          style: TextStyle(
                            letterSpacing: 2.0,
                            color: HexColor(
                              "#013334",
                            ),
                            fontSize: 15.0,
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
                  ),

                  //* Here are Showing The current Studying status....!
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 55.0, top: 15.0),
                      child: Text("Current Studying Status :",
                          style: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  //There Are the code of current eduction..!
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 3,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        activeColor: HexColor("#013334"),
                                        checkColor: Colors.white,
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Class 1-10',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 15.0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 10.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        activeColor: HexColor("#013334"),
                                        checkColor: Colors.white,
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Studying',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        activeColor: HexColor("#013334"),
                                        checkColor: Colors.white,
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        ' Passed',
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                const Text('Class :'),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    minHeight: 0.0,
                                    minWidth: 0.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                const Text('Section :'),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    minHeight: 0.0,
                                    minWidth: 0.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                const Text('Session :'),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    minHeight: 0.0,
                                    minWidth: 0.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                const Text('School :'),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    minHeight: 0.0,
                                    minWidth: 0.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //* Ending of Current Syuding...
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Class 11-12'),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isvisibileSc = !isvisibileSc;
                              isStreachDropdownSc = !isStreachDropdownSc;
                            });
                          },
                          child: Icon(
                              isStreachDropdownSc ? Icons.minimize : Icons.add),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  // Class 11-12..
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 20),
                    child: Visibility(
                      visible: isvisibileSc,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Class 11-11',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.0),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 10.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Studying',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          ' Passed',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Class :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Section :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Session :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('School :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //End Class 11-12
                  // Diploma
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' Diploma '),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isvisibileDi = !isvisibileDi;
                              isStreachDropdownDi = !isStreachDropdownDi;
                            });
                          },
                          child: Icon(
                              isStreachDropdownDi ? Icons.minimize : Icons.add),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  // Class 11-12..

                  //Diploma
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 20),
                    child: Visibility(
                      visible: isvisibileDi,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Diploma',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.0),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 10.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Studying',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          ' Passed',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Year of Passing :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('School/ Institute :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // UG
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' Under Graduate '),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isvisibileUg = !isvisibileUg;
                              isStreachDropdownUg = !isStreachDropdownUg;
                            });
                          },
                          child: Icon(
                              isStreachDropdownUg ? Icons.minimize : Icons.add),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  // Class 11-12..

                  //ug
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 20),
                    child: Visibility(
                      visible: isvisibileUg,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          ' Under Graduate ',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.0),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 10.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Studying',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          ' Passed',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Year of Passing :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('School/ Institute :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Pg
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' Post Graduate '),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isvisibilePg = !isvisibilePg;
                              isStreachDropdownPg = !isStreachDropdownPg;
                            });
                          },
                          child: Icon(
                              isStreachDropdownPg ? Icons.minimize : Icons.add),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  // Class 11-12..

                  //Diploma
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 20),
                    child: Visibility(
                      visible: isvisibilePg,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Post Graduate ',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.0),
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 10.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Studying',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          activeColor: HexColor("#013334"),
                                          checkColor: Colors.white,
                                          value: agree,
                                          onChanged: (value) {
                                            setState(() {
                                              agree = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          ' Passed',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('Year of Passing :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Row(
                                children: [
                                  const Text('School/ Institute :'),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 0.0,
                                      minWidth: 0.0,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //! This Container is use for the overlapping for sshowing user name and email..
          Container(
            color: HexColor("#013334"),
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            right: 30,
            left: 30,
            child: Card(
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                height: 100.0,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.delete_forever,
                      size: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Abid Rahman',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(
                                  "#013334",
                                )),
                          ),
                        ),
                        const Text(
                          'abid@theAllsafe.com',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
