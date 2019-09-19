import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/navigator/tab_navigater.dart';
import 'package:gas_jp/pages/home_page.dart';
import 'package:gas_jp/pages/login_page.dart';

class PayCompletePage extends StatefulWidget {
  @override
  _PayCompletePageState createState() => _PayCompletePageState();
}

class _PayCompletePageState extends State<PayCompletePage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool groupValue = false;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void _showAlertDialog(BuildContext context) {
    EasyDialog(
      description: Text(
        "功能暂未开放，敬请期待",
        textScaleFactor: 1.2,
        style: TextStyle(fontSize: 14, color: Colors.black54),
        textAlign: TextAlign.center,
      ),
      height: 140,
    ).show(context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        title: Text(
          '燃气缴费',
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: Color.fromRGBO(38, 38, 38, 1),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/icon_blueFinished.png',
                  height: 58,
                  width: 58,
                ),
                Text(
                  '缴费成功',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 20,
                    height: 2.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '缴费金额¥173.00',
                  style: TextStyle(
                    color: Color.fromRGBO(102, 102, 102, 1),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: OutlineButton(
              color: Color.fromRGBO(246, 246, 246, 1),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              child: Text(
                '返回首页',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabNavigator()));
              },
              padding: EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
