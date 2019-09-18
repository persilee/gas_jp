import 'package:flutter/material.dart';
import 'package:gas_jp/pages/register_tied_card_page.dart';

class RegisterRealNamePage extends StatefulWidget {
  @override
  _RegisterRealNamePageState createState() => _RegisterRealNamePageState();
}

class _RegisterRealNamePageState extends State<RegisterRealNamePage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterTiedCardPage()));
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
            height: 185,
            margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/img_identityCard1.png',
                      width: 158,
                      height: 98,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text('点击拍摄/上传人像面'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/img_identityCard2.png',
                      width: 158,
                      height: 98,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text('点击拍摄/上传国徽面'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 55,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
            padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
            color: Color.fromRGBO(246, 246, 246, 1),
            child: Column(
              children: <Widget>[
                Form(
                  key: _loginKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: '姓名',
                            hintText: "请输入姓名",
                            prefixIcon: Icon(Icons.person),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                          ),
                          onSaved: (value) {
                            uName = value;
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: '身份证号',
                            hintText: "请输入身份证号",
                            prefixIcon: Icon(Icons.credit_card),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                          ),
                          onSaved: (value) {
                            uName = value;
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '温馨提示：',
                              style: TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1),
                                fontWeight:FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                            Text(
                              '1、身份信息一经认证不可修改！',
                              style: TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1),
                                height: 1.2,
                              ),
                            ),
                            Text(
                              '2、信息仅用于身份证验证，巨鹏燃气保障您的安全信息。',
                              style: TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1),
                                height: 1.2,
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
