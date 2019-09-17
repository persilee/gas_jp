import 'package:flutter/material.dart';
import 'package:gas_jp/pages/register_real_name_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterRealNamePage()));
    if (_loginKey.currentState.validate()) {
      _loginKey.currentState.save();
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          color: Color.fromRGBO(204, 204, 204, 1),
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
                          color: Color.fromRGBO(204, 204, 204, 1),
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
            height: 750,
            padding: EdgeInsets.fromLTRB(20, 40, 20, 100),
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
                            hintText: "请设置登录密码",
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
                      Padding(padding: EdgeInsets.fromLTRB(0, 14, 0, 14)),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: double.infinity,
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
