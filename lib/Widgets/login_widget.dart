import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:school_buddy/Home_Pages/home_page.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  bool agree = false;
  // ignore: unused_field
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  TextStyle defaultStyle =
      GoogleFonts.workSans(color: Colors.black, fontSize: 15.0);
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
//! End Of The AppBar...

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
                  "Let's sign you in",
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        RichText(
                          maxLines: 1,
                          text: TextSpan(
                            style: defaultStyle,
                            children: const [
                              TextSpan(text: 'Remeber me'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                          style: defaultStyle,
                          children: const [
                            TextSpan(text: 'Forgot Password '),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SizedBox(
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
                        _isLoading = true;
                        _sendLoginData(
                            _emailController.text, _passwordController.text);
                      },
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.workSans(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.0,
                      minWidth: MediaQuery.of(context).size.width * 0.20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/signUpPage');
                          },
                          child: Text(
                            'Sign Up',
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

  _sendLoginData(String _emailController, String _passwordController) async {
    const String url =
        'https://scsy.in/schoolbuddy/schoolbuddy/public/api/App/signin';

    var data = {
      'password': _passwordController,
      'email': _emailController,
    };
    // ignore: avoid_init_to_null
    var jsonData = null;
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // ignore: non_constant_identifier_names
    var Response = await http.post(Uri.parse(url), body: data);
    if (Response.statusCode == 200) {
      jsonData = jsonDecode(Response.body);
      // print(jsonData);
      final id = jsonData['user']['id'];
      final email = jsonData['user']['email'];
      if (jsonData['success']) {
        setState(() {
          _isLoading = false;
          // sharedPreferences.setString("token", jsonData['token']);
          Fluttertoast.showToast(
              msg: jsonData['message'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
              settings: RouteSettings(
                arguments: {'id': id, 'email': email},
              ),
            ),
          );
          //  Navigator.pushReplacementNamed(context, '/homePage');
        });
      } else {
        return Fluttertoast.showToast(
            msg: jsonData['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }
  }
}
