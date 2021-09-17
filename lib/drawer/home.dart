import 'package:flutter/material.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushReplacementNamed(context, '/schoolpage');
                });
              },
              child: Card(
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
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              alignment: Alignment.bottomRight,
                              child: const Icon(Icons.favorite_border_outlined),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
