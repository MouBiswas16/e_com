// ignore_for_file: prefer_const_constructors

import 'package:e_com/core/export/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Comm',
      home: HomeScreen(),

      // routes: {
      //   "/": (context) => HomeScreen(),
      //   "/cartScreen": (context) => CartScreen(cartList: widget.cartlist,),
      // },
    );
  }
}
