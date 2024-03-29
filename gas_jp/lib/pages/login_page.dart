import 'package:flutter/material.dart';
import 'package:gas_jp/navigator/tab_navigater.dart';
import 'package:gas_jp/pages/find_pwd_page.dart';
import 'package:gas_jp/pages/home_page.dart';
import 'package:gas_jp/pages/register_page.dart';
import 'package:gas_jp/util/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _loginKey = GlobalKey<FormState>();
  TextEditingController _uNameController = TextEditingController();
  TextEditingController _uPwdController = TextEditingController();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool _isLookPwd = true;
  bool autoValidate = false;
  bool _loading = false;

  void submitRegisterForm() {
    if (_uNameController.text != '' && _uPwdController.text != '') {
      _login();
    } else if (_uNameController.text == '') {
      Toast.show(context, "用户名不能为空");
    } else if (_uPwdController.text == '') {
      Toast.show(context, "密码不能为空");
    }
  }

  _login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _uNameController.text);
    prefs.setString('pwd', _uPwdController.text);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pwdFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: null,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabNavigator()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.close,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 650,
            padding: EdgeInsets.fromLTRB(20, 30, 20, 100),
            color: Color.fromRGBO(246, 246, 246, 1),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 18)),
                Form(
                  key: _loginKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 6.0,
                              ),
                            ]),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _uNameController,
                          decoration: InputDecoration(
                            labelText: '用户名',
                            hintText: "请输入手机号",
                            prefixIcon: Icon(Icons.person),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                          ),
                          onSaved: (value) {
                            uName = value;
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 14, 0, 14)),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 6.0,
                              ),
                            ]),
                        child: TextFormField(
                          obscureText: _isLookPwd,
                          focusNode: _pwdFocusNode,
                          controller: _uPwdController,
                          decoration: InputDecoration(
                            labelText: '密码',
                            hintText: "请输入密码",
                            prefixIcon: Icon(Icons.lock),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isLookPwd = !_isLookPwd;
                                });
                              },
                              child: Icon(Icons.remove_red_eye),
                            ),
                          ),
                          onSaved: (value) {
                            uPwd = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            '登 录',
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(1, 20, 1, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                              },
                              child: Text(
                                '快速注册',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FindPwdPage()));
                              },
                              child: Text(
                                '忘记密码',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontWeight: FontWeight.bold,
                                ),
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
          ),
        ],
      ),
    );
  }
}
