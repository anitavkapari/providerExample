import 'package:flutter/material.dart';
import 'package:menu_item_widget/CounterModel.dart';
import 'package:menu_item_widget/Menu_Item_Widget.dart';

import 'package:provider/provider.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CounterModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Menu_Item_Widget(),
          ),
        ),
      ),
    );
    /*return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
       backgroundColor: Colors.black,
          body: SingleChildScrollView(
           // create: (context) => CounterModel,
            child: Menu_Item_Widget(),
          )
      ),
    );*/
  }
}

