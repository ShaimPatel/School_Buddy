import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchBarHomePage extends StatefulWidget {
  const SearchBarHomePage({Key? key}) : super(key: key);

  @override
  _SearchBarHomePageState createState() => _SearchBarHomePageState();
}

class _SearchBarHomePageState extends State<SearchBarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 4.0),
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
            Container(
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100.0, top: 10),
          child: Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.03,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.15,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    top: 5.0,
                  ),
                  child: Text(
                    'Location -',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    top: 3.0,
                  ),
                  child: Text(
                    'Lucknow 302019',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.03,
                child: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
