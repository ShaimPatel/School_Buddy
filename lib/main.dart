import 'package:flutter/material.dart';
import 'package:school_buddy/Home_Pages/home_page.dart';
import 'package:school_buddy/drawer/chatbox.dart';
import 'package:school_buddy/drawer/favourite.dart';
import 'package:school_buddy/drawer/home.dart';
import 'package:school_buddy/Pages/login_page.dart';
import 'package:school_buddy/Pages/signup_page.dart';
import 'package:school_buddy/drawer/profile.dart';
import 'package:school_buddy/drawer/school.dart';
import 'package:school_buddy/drawer/setting.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/signUpPage',
      routes: {
        '/loginPage': (context) => const LoginPage(),
        '/signUpPage': (context) => const SignUpPage(),
        '/homePage': (context) => const HomePage(),
        '/list': (context) => const HomeListPage(),
        '/profilepage': (context) => const ProfilePage(),
        '/settinpage': (context) => const SettingPage(),
        '/schoolpage': (context) => const SchoolPage(),
        '/chatboxpage': (context) => const ChatBoxPage(),
        '/favouritepage': (context) => const FavouriteListPage(),
      },
    );
  }
}
