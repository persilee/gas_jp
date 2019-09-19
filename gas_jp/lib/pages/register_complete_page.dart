import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/login_page.dart';

class RegisterCompletePage extends StatefulWidget {
  @override
  _RegisterCompletePageState createState() => _RegisterCompletePageState();
}

class _RegisterCompletePageState extends State<RegisterCompletePage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool groupValue = false;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
    if (_loginKey.currentState.validate()) {
      _loginKey.currentState.save();
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

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
          '注册',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 320,
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
                  '注册完成',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 20,
                    height: 2.2,
                  ),
                ),
                Text(
                  '您的燃气缴费户号为: ',
                  style: TextStyle(
                    color: Color.fromRGBO(102, 102, 102, 1),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                Text(
                  '012347668',
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
                '去登录',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
              onPressed: submitRegisterForm,
              padding: EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
