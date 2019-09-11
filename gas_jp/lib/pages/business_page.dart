import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('商城', style: TextStyle(fontSize: 26),),
      ),
    );
  }
}
