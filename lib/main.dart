// ignore_for_file: prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAh_5wZAsNfy95NJdDgzJFVIqA-RTR4aBg",
        authDomain: "chat-248d2.firebaseapp.com",
        databaseURL: "https://chat-248d2-default-rtdb.firebaseio.com",
        projectId: "chat-248d2",
        storageBucket: "chat-248d2.appspot.com",
        messagingSenderId: "466178176556",
        appId: "1:466178176556:web:03f9d1c048fb434bec8389",
        measurementId: "G-ZC9BW2Q5X6",
      ),
      );
  runApp(const MyApp());
}

// void main(List<String> args) {
//   runApp(const MyApp());
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Baba',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        backgroundColor: Colors.pink,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.pink,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: Splash(),
    );
  }
}
