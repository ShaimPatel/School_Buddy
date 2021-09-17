import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_buddy/Home_Pages/drawer_page.dart';
import 'package:school_buddy/Home_Pages/search_bar.dart';

class FavouriteListPage extends StatefulWidget {
  const FavouriteListPage({Key? key}) : super(key: key);

  @override
  _FavouriteListPageState createState() => _FavouriteListPageState();
}

class _FavouriteListPageState extends State<FavouriteListPage> {
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
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 5,
                      child: SizedBox(
                        height: 130.0,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/scpic.jpg',
                                height: 100,
                                width: 150,
                              ),
                            ),
                            Column(
                              children: [
                                const Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 18.0),
                                    child: Text(
                                      'SPS Inetrenatonal College ',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                const Flexible(
                                  child: Text(
                                    'N/A',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    alignment: Alignment.bottomRight,
                                    child: const Icon(Icons.favorite,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
