import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:gas_jp/pages/register_complete_page.dart';

class MessageDetailPage extends StatefulWidget {
  @override
  _MessageDetailPageState createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
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
          '消息详情',
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
            padding: EdgeInsets.fromLTRB(20, 26, 20, 26),
            child: Column(
              children: <Widget>[
                Text(
                  '设备整修公告',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                Text(
                  '公告时间：2019-4-24 00:00:00',
                  style: TextStyle(
                    color: Color.fromRGBO(102, 102, 102, 1),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  '    尊敬的用户，为了给您带来更好的体验，设备将于2019年4月25日22:00至2019年4月25日24:00对设备进行紧急维护。',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  '    	维护过程中，可能出现部分业务系统访问不稳定，主要涉及统一身份认证、公共数据库平台、师生综合服务平台、财务系统、科研系统、人事系统、本科生教务系统、资源保障信息系统、研究生系统、办公自动化系统等。',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  '    		在维护期间如有特殊需求，可与信息化办公室联系，电话62233081。',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '    			特此公告',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 14,
                      height: 1.5,

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '    			丽水巨鹏燃气有限责任公司',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 14,
                      height: 1.5,

                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '    			二零一九年四月二十四日',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 14,
                      height: 1.5,

                    ),
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
