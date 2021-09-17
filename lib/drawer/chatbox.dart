import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatBoxPage extends StatefulWidget {
  const ChatBoxPage({Key? key}) : super(key: key);

  @override
  _ChatBoxPageState createState() => _ChatBoxPageState();
}

class _ChatBoxPageState extends State<ChatBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#013334"),
        leading: const Icon(
          Icons.chat_bubble_outlined,
        ),
        title: const Text(
          'ChatBox ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, bottom: 5, right: 30, left: 30),
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
                      hintText: 'Search For Friend/Message ',
                      border: InputBorder.none,
                    ),
                    cursorColor: HexColor("#013334"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Padding(
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
                              child: Image.asset("assets/man.png"),
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
                          ),
                        ],
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
