import 'package:flutter/material.dart';

class FindPwdPage extends StatefulWidget {
  @override
  _FindPwdPageState createState() => _FindPwdPageState();
}

class _FindPwdPageState extends State<FindPwdPage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    if (_loginKey.currentState.validate()) {
      _loginKey.currentState.save();
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '找回密码',
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
            height: 750,
            padding: EdgeInsets.fromLTRB(20, 60, 20, 100),
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: '短信验证码',
                            hintText: "请输入短信验证码",
                            prefixIcon: Icon(Icons.mail),
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
                          decoration: InputDecoration(
                            labelText: '密码',
                            hintText: "请输入新密码",
                            prefixIcon: Icon(Icons.lock),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: (){
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
                          decoration: InputDecoration(
                            labelText: '密码',
                            hintText: "请再次输入新密码",
                            prefixIcon: Icon(Icons.lock),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              onTap: (){
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
                            '提 交',
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
