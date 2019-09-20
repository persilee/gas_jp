import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/register_complete_page.dart';

class ResetPwdPage extends StatefulWidget {
  @override
  _ResetPwdPageState createState() => _ResetPwdPageState();
}

class _ResetPwdPageState extends State<ResetPwdPage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool groupValue = false;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterCompletePage()));
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
          '重置密码',
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
            height: 750,
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 246, 1),
            ),
            child: Column(
              children: <Widget>[
                Form(
                  key: _loginKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '手机号',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: '请输入银行卡预留手机号码',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                      ),
                                      textAlign: TextAlign.right,
                                      onSaved: (value) {
                                        uName = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(236, 236, 236, 1),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '验证码',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '请输入短信验证码',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            _showAlertDialog(context);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                6, 12, 0, 12),
                                            child: Text(
                                              '获取验证码',
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      textAlign: TextAlign.right,
                                      onSaved: (value) {
                                        uName = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '新密码',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: '请输入新密码',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                      ),
                                      textAlign: TextAlign.right,
                                      onSaved: (value) {
                                        uName = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(236, 236, 236, 1),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                              width: double.infinity,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '确认密码',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '请再次输入新密码',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                      ),
                                      textAlign: TextAlign.right,
                                      onSaved: (value) {
                                        uName = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            '提交',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          elevation: 0.0,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.all(12),
                          disabledColor: Color.fromRGBO(41, 150, 196, 0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
