
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:home_rent/home_page.dart';
import 'package:home_rent/menu_page.dart';
import 'package:home_rent/zoom_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: EntryApp(),);

  }}

class EntryApp extends StatefulWidget {
  const EntryApp({super.key});

  @override
  State<EntryApp> createState() => _EntryAppState();
}

class _EntryAppState extends State<EntryApp> with TickerProviderStateMixin {
  late MenuProvider menucontroller;

  @override
  void initState() {

    super.initState();
    menucontroller = MenuProvider(
      vsync: this,
    )..addListener(()=> setState(
            (){} ),);
  }

  @override
  void dispose() {
    menucontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>
      menucontroller,child: ZoomHomePage(
      menuScreen: const MenuPage(),
      contentScreen: Layout(
        contentBuilder: (cc)=> const HomePage()
      ),

    ),
    );
  }
}
