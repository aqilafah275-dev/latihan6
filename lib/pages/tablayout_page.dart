import 'package:flutter/material.dart';
import 'package:latihan6/Components/appbar.dart';
import 'package:latihan6/pages/profile.dart';

class TablayoutPage extends StatefulWidget {
  TablayoutPage({super.key});

  @override
  State<TablayoutPage> createState() => _TablayoutPageState();
}

class _TablayoutPageState extends State<TablayoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleAppBar(),
    );
  }
}