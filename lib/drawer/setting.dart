import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#013334'),
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Image.asset(
          'assets/splash.png',
          height: MediaQuery.of(context).size.height * 0.9,
          width: 100,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: const Center(
              child: Text(
                "Select Language",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/p.jpg'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/pp.jpg'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
