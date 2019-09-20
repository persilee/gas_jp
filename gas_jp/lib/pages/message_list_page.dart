import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/message_detail_page.dart';
import 'package:gas_jp/pages/register_complete_page.dart';

class MessageListPage extends StatefulWidget {
  @override
  _MessageListPageState createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  final _loginKey = GlobalKey<FormState>();
  FocusNode _pwdFocusNode;
  String uName, uPwd;
  bool groupValue = false;
  bool _isLookPwd = true;
  bool autoValidate = false;

  void submitRegisterForm() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegisterCompletePage()));
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
          '消息列表',
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
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 246, 246, 1),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Center(
                          child: Text(
                            '今天 10:00',
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '设备整修公告',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: 14,
                                  color: Color.fromRGBO(247, 81, 81, 1),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => MessageDetailPage()));
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      '尊敬的用户，为了给您带来更好的体验，设备将于2019年4月25日22:00至2019年4月25…',
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Color.fromRGBO(102, 102, 102, 1)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(102, 102, 102, 0.6),size: 18,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 246, 246, 1),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Center(
                          child: Text(
                            '昨天 14:05',
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '设备整修公告',
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: 14,
                                  color: Color.fromRGBO(247, 81, 81, 1),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => MessageDetailPage()));
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      '尊敬的用户，为了给您带来更好的体验，设备将于2019年4月25日22:00至2019年4月25…',
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Color.fromRGBO(102, 102, 102, 1)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(102, 102, 102, 0.6),size: 18,),
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
          ),
        ],
      ),
    );
  }
}
