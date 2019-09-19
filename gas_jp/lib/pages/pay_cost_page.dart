import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/login_page.dart';
import 'package:gas_jp/pages/pay_complete_page.dart';

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
  bool _isChoose = false;
  String _cartVal = '';

  void _showAlertDialog(BuildContext context) {
    EasyDialog(
      closeButton: false,
      cornerRadius: 10.0,
      fogOpacity: 0.1,
      height: 160,
      description: Text(
        "您确认要进行缴费吗？",
        textScaleFactor: 1.2,
        style: TextStyle(
            fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      descriptionPadding: EdgeInsets.fromLTRB(0, 40, 0, 40),
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      contentList: [
        Divider(
          height: 1,
          color: Color.fromRGBO(77, 77, 77, 0.78),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "取消",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 118, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 0.5,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(77, 77, 77, 0.78),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PayCompletePage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "确定",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 118, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
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
              onPressed: () {
                _showAlertDialog(context);
              },
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
          return StatefulBuilder(
            builder: (context1, state) {
              return GestureDetector(
                behavior: HitTestBehavior.deferToChild,
                onTap: () {
                  return false;
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(22, 18, 22, 18),
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            RadioListTile(
                              value: 'BOC',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_BOC.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
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
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            RadioListTile(
                              value: 'ABC',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_ABC.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
                                  ),
                                  Text(
                                    '中国农业银行储蓄卡(4238)',
                                    style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            RadioListTile(
                              value: 'CMB',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_CMB.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
                                  ),
                                  Text(
                                    '招商银行储蓄卡(1536)',
                                    style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            RadioListTile(
                              value: 'CEB',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_CEB.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
                                  ),
                                  Text(
                                    '光大银行信用卡(1328)',
                                    style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            RadioListTile(
                              value: 'BOCOM',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_BOCOM.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
                                  ),
                                  Text(
                                    '交通银行信用卡(8672)',
                                    style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            RadioListTile(
                              value: 'CGB',
                              groupValue: _cartVal,
                              onChanged: (value) {
                                state(() {
                                  _cartVal = value;
                                });
                              },
                              activeColor: Theme.of(context).primaryColor,
                              title: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_bankLogo_CGB.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 6),
                                  ),
                                  Text(
                                    '广发银行储蓄卡(3290)',
                                    style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              isThreeLine: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
            },
          );
        });
  }
}

class CheckWidget extends StatelessWidget {
  final bool visible;

  const CheckWidget({Key key, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: visible ? 1.0 : 0.0,
      child: Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
