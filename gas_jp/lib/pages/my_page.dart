import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _loading = false;
  String _cartVal = '';

  Future<Null> _handleRefresh() async {
    try {
//      HomeModel model = await HomeDao.fetch();
      setState(() {
        _loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        _loading = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(249, 249, 249, 1)),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: RefreshIndicator(
            onRefresh: _handleRefresh,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 268,
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_accountBg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/img_accountProfilePhoto.png',
                        width: 58,
                        height: 58,
                      ),
                      Text(
                        '付易工',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                        ),
                      ),
                      Text(
                        '136****2388',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/icon_accountNumber.png',
                                  height: 19,
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text(
                                  '我的户号',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '012347668',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Color.fromRGBO(235, 235, 235, 1),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Wrap(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_accountCardPag.png',
                                    height: 19,
                                    width: 18,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),
                                  Text(
                                    '我的卡包',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Color.fromRGBO(235, 235, 235, 1),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: GestureDetector(
                          onTap: _openModalBottomSheet,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_accountBankCard.png',
                                    height: 19,
                                    width: 18,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),
                                  Text(
                                    '默认扣款银行卡',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '工商银行(3317)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 4),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Color.fromRGBO(235, 235, 235, 1),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Wrap(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/icon_accountPassword.png',
                                    height: 19,
                                    width: 18,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),
                                  Text(
                                    '登录密码重置',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/icon_accountServiceLady.png',
                                  height: 19,
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text(
                                  '智能客服',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Color.fromRGBO(235, 235, 235, 1),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/icon_accountNotice.png',
                                  height: 19,
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text(
                                  '消息通知',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/icon_accountAbout.png',
                                  height: 19,
                                  width: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text(
                                  '关于',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: OutlineButton(
                    color: Color.fromRGBO(246, 246, 246, 1),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                    child: Text(
                      '安全退出',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(12),
                  ),
                ),
              ],
            ),
          ),
        ),
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
