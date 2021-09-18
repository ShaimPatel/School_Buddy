// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_buddy/Pages/search_school.dart';
import 'package:school_buddy/services/api.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  //! There Are Code of registration..
  _register() async {
    var data = {
      'name': _usernameController.text,
      'password': _passwordController.text,
      'email': _emailController.text,
      'school_id': selectedSchool[1],
      'contact_number': _phoneController.text,
    };

    var res = await CallApi().postData(data, 'signup');
    var body = json.decode(res.body);
    // print(body['success'] == false);
    if (body['success'] == true) {
      Navigator.pushReplacementNamed(context, '/loginPage');
    } else {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(body['message']),
          );
        },
      );
      // ignore: avoid_print
      // print(body['message']);
    }
  }

  final _formKey = GlobalKey<FormState>();
  bool agree = false;
  final TextEditingController _schoolController = TextEditingController();
  var SchoolId;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  List selectedSchool = [];
  TextStyle defaultStyle =
      GoogleFonts.workSans(color: Colors.grey, fontSize: 15.0);
  TextStyle linkStyle = GoogleFonts.workSans(color: Colors.blue);

  //! There Are Starting AppBar..
  var appbar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 110,
    title: Image.asset(
      'assets/splash.png',
      height: 50.0,
      width: 250,
    ),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          color: HexColor("#013334")),
    ),
  );
// End Of The AppBar...
  @override
  Widget build(BuildContext context) {
    var allheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appbar,
      body: SizedBox(
        height: allheight - appbar.preferredSize.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Create your account",
                  style: GoogleFonts.workSans(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: HexColor("#013334"),
                        controller: _usernameController,
                        minLines: 1,
                        maxLines: 1,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: HexColor("#013334"),
                            ),
                          ),
                        ),
                        // validator: (value) {
                        //   if (value!.isEmpty ) {
                        //     return "Enter Correct Name..";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                        ),
                      ),
                      TextFormField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          border: UnderlineInputBorder(),
                        ),
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                        ),
                        validator: (value) {},
                      ),
                      TextFormField(
                        minLines: 1,
                        maxLines: 1,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: UnderlineInputBorder(),
                        ),
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter Correct Email.";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                        ),
                      ),
                      TextFormField(
                        controller: _phoneController,
                        minLines: 1,
                        maxLines: 1,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'Contact Number',
                          border: UnderlineInputBorder(),
                        ),
                        style: GoogleFonts.workSans(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          onTap: () async {
                            selectedSchool = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchSchoolPage(),
                              ),
                            );
                            setState(() {
                              _schoolController.text = selectedSchool[0];
                              SchoolId = selectedSchool[1];
                            });
                            //print(_schoolController.text);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    (_schoolController.text == "")
                                        ? "School"
                                        : _schoolController.text,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.workSans(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Divider(
                                      height: 10,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
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
                    Expanded(
                      flex: 2,
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: defaultStyle,
                          children: <TextSpan>[
                            const TextSpan(
                                text:
                                    'By creating an account , you agree to the '),
                            TextSpan(
                                text: 'Terms ',
                                style: linkStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // print('Terms of Service"');
                                  }),
                            const TextSpan(text: ' and  '),
                            TextSpan(
                              text: 'Condoition ',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // print('Privacy Policy"');
                                },
                            ),
                            const TextSpan(text: 'and '),
                            TextSpan(
                              text: 'Privacy Policy ',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // print('Privacy Policy"');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.80,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.0,
                    minWidth: MediaQuery.of(context).size.width * 0.10,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("#013334"),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        const SnackBar(
                            content: Text("Registration Successfully"));
                      }
                      _register();
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.workSans(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.0,
                      minWidth: MediaQuery.of(context).size.width * 0.20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/loginPage');
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                            ),
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
    );
  }
}
