import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class SearchSchoolPage extends StatefulWidget {
  const SearchSchoolPage({Key? key}) : super(key: key);

  @override
  _SearchSchoolPageState createState() => _SearchSchoolPageState();
}

class _SearchSchoolPageState extends State<SearchSchoolPage> {
  List<dynamic> schoollist = [];

  //* There Are initliazation The Method _getSchool...
  @override
  void initState() {
    super.initState();
    _getSchool();
  }

  //* End Of initliazation

  //! There Are Fetching The Data From Server...And Binding The value in a list view..!
  Future<dynamic> _getSchool() async {
    String url =
        'https://scsy.in/schoolbuddy/schoolbuddy/public/api/App/school';
    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final getDataresponse = response.body;
      var list = json.decode(getDataresponse);
      setState(() {
        if (list['success'] == true && list['message'] == "School name found") {
          schoollist = list['data'];
        }
        // setState(() {});
      });
    } else {
      throw Exception('Feaild To Load...!');
    }
  }
  //!End Of Fetching the value...

  @override
  Widget build(BuildContext context) {
    var totalHeight = MediaQuery.of(context).size.height;
    var totalwidth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#013334'),
        elevation: 0,
        title: Image.asset(
          'assets/splash.png',
          height: 30.0,
          width: 100,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        height: totalHeight * 0.9,
        width: totalwidth,
        color: Colors.grey[200],
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor("#ffffff"),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 4.0),
                      child: TextFormField(
                        autofocus: true,
                        showCursor: true,
                        decoration: const InputDecoration(
                          hintText: 'Search School ',
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.workSans(),
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
                      size: MediaQuery.of(context).size.height * 0.06,
                      color: HexColor("#013334"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: schoollist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, right: 20, left: 20, bottom: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, [
                                schoollist[index]['name'],
                                schoollist[index]['id']
                              ]);
                            },
                            child: Text(
                              schoollist[index]['name'].toString(),
                              style: GoogleFonts.workSans(
                                fontSize: 18.0,
                                color: HexColor("#013334"),
                              ),
                            ),
                          ),
                          Divider(
                            height: 6,
                            color: HexColor("#013334"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
