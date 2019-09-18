import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/register_complete_page.dart';

class RegisterTiedCardPage extends StatefulWidget {
  @override
  _RegisterTiedCardPageState createState() => _RegisterTiedCardPageState();
}

class _RegisterTiedCardPageState extends State<RegisterTiedCardPage> {
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
            height: 100,
            padding: EdgeInsets.only(top: 40),
            color: Color.fromRGBO(246, 246, 246, 1),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: 1,
                    color: Color.fromRGBO(204, 204, 204, 1),
                  ),
                  top: 10,
                  left: 45,
                  width: MediaQuery.of(context).size.width * 0.78,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(204, 204, 204, 1),
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Text(
                            '4',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Text('绑定手机号'),
                      ),
                      Container(
                        child: Text('实名认证'),
                      ),
                      Container(
                        child: Text('绑定结算卡'),
                      ),
                      Container(
                        child: Text('注册成功'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(238, 55, 49, 0.1)),
            height: 55,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.error_outline,
                  color: Color.fromRGBO(102, 102, 102, 1),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 6),
                ),
                Text('请确认您的个人信息，若有误请重新上传')
              ],
            ),
          ),
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
                                    '持卡人',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '请输入持卡人',
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
                                    '卡号',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '请输入你的银行卡号或拍照识别',
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isLookPwd = !_isLookPwd;
                                            });
                                          },
                                          child: Icon(Icons.camera_alt),
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
                                    '银行',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '系统自动识别',
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
                                    '卡类型',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '系统自动识别',
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
                                    'CVN2',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: '请输入信用卡背面后3位数字',
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
                                    '有效期',
                                    style: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontSize: 16),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: '请输入4位有效期(例09/22,填0922)',
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
                        padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              activeColor: Theme.of(context).primaryColor,
                              value: groupValue,
                              onChanged: (bool result) {
                                setState(() {
                                  groupValue = !groupValue;
                                });
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            Text(
                              '我已阅读并同意',
                              style: TextStyle(
                                color: Color.fromRGBO(204, 204, 204, 1),
                                height: 1.2,
                                fontSize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                '《巨鹏燃气缴费服务协议》',
                                style: TextStyle(
                                  color: Color.fromRGBO(41, 150, 196, 1),
                                  height: 1.2,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            '下一步',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          elevation: 0.0,
                          onPressed: submitRegisterForm,
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
