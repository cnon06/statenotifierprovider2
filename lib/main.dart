import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home.dart';


// void main() => runApp(MyApp());
void main()
{
  runApp( const ProviderScope(child: MyApp()));
}
 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}