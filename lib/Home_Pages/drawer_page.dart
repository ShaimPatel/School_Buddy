import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_buddy/Home_Pages/home_page.dart';
import 'package:school_buddy/drawer/chatbox.dart';
import 'package:school_buddy/drawer/favourite.dart';
import 'package:school_buddy/drawer/profile.dart';
import 'package:school_buddy/drawer/school.dart';
import 'package:school_buddy/drawer/setting.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerHomePage extends StatefulWidget {
  const DrawerHomePage({Key? key}) : super(key: key);

  @override
  _DrawerHomePageState createState() => _DrawerHomePageState();
}

class _DrawerHomePageState extends State<DrawerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: HexColor("#013334"),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Image.asset(
                    'assets/splash.png',
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                  )
                ],
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Home',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 0);
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Profile',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 3);
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'ChatBox',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 4);
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'School',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 5);
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Favourities',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 1);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const FavouriteListPage(),
                    //   ),
                    // );
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Setting',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    selectedItem(context, 6);
                  },
                ),
                const Divider(height: 7.0, color: Colors.black),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'About Us',
                      style: GoogleFonts.lato(
                        color: HexColor("#013334"),
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  onTap: () async {
                    const url = "https://flutter.dev/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            // ignore: sized_box_for_whitespace
            child: Container(
              alignment: AlignmentDirectional.bottomStart,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Logout",
                  style: GoogleFonts.lato(
                    color: HexColor("#013334"),
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
          break;
        }
      case 1:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FavouriteListPage(),
            ),
          );
          break;
        }
      case 3:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
          break;
        }
      case 4:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatBoxPage(),
            ),
          );
          break;
        }
      case 5:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SchoolPage(),
            ),
          );
          break;
        }

      case 6:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SettingPage(),
            ),
          );
          break;
        }
    }
  }
}
