import 'package:flutter/material.dart';
import 'package:providedtask1/provider/providerclass.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Providerclass(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
