import 'package:flutter/material.dart';
import 'package:gas_jp/pages/login_page.dart';
import 'package:gas_jp/pages/message_list_page.dart';
import 'package:gas_jp/pages/reset_pwd_page.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                        'assets/images/img_accountLogo.png',
                        width: 58,
                        height: 58,
                      ),
                      Text(
                        '巨鹏燃气1.0',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                        ),
                      ),
                      Text(
                        '巨鹏燃气APP由丽水巨鹏燃气有限公司研发，',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        '旨在给客户带来更优质的用气体验！',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          height: 1.2,
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
                                Text(
                                  '官网',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'http://www.pengjushuili.com/',
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
                          behavior: HitTestBehavior.opaque,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Wrap(
                                children: <Widget>[
                                  Text(
                                    '缴费协议',
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
                                color: Color.fromRGBO(51, 51, 51, 1),
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
