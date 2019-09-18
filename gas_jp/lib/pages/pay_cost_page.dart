import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/login_page.dart';

class PayCostPage extends StatefulWidget {
  @override
  _PayCostPageState createState() => _PayCostPageState();
}

class _PayCostPageState extends State<PayCostPage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool groupValue = false;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
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
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  '应缴金额',
                  style: TextStyle(
                    color: Color.fromRGBO(153, 153, 153, 1),
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
                Text(
                  '¥173.00',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 36,
                    height: 1.6,
                  ),
                ),
                Text(
                  '（含上期待缴金额20元、滞纳金6.6元）',
                  style: TextStyle(
                    color: Color.fromRGBO(238, 55, 49, 1),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '当期用量',
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                    Text(
                      '26.6㎡',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '缴费单位',
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                    Text(
                      '丽水巨鹏燃气有限公司',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '缴费户号',
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                    Text(
                      '012347668',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '缴费户名',
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                    Text(
                      '付工易',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '住址信息',
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                    Text(
                      '丽水市开发区绿城小区A栋8楼302',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: GestureDetector(
              onTap: _openModalBottomSheet,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '缴费户名',
                    style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '工商银行(3317)',
                          style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            margin: EdgeInsets.only(top: 40),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                '立即缴费',
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
    );
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              return false;
            },
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            '取消',
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              '请选择扣款银行卡',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/gh_logo.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  '中国银行信用卡(4640)',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: 16,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.check, color: Theme.of(context).primaryColor,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/gh_logo.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  '中国银行信用卡(4640)',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
