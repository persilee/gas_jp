import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = true;
  List _imageUrls = [
    'assets/images/img_banner1.png',
    'assets/images/img_banner2.png'
  ];

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
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: RefreshIndicator(
            onRefresh: _handleRefresh,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 175,
                  child: Swiper(
                    itemCount: _imageUrls.length,
                    autoplay: true,
                    autoplayDelay: 6000,
                    autoplayDisableOnInteraction: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        _imageUrls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    pagination: SwiperPagination(
                        margin: EdgeInsets.only(bottom: 10),
                        builder: DotSwiperPaginationBuilder(
                          size: 8,
                          activeSize: 8,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image(
                                width: 50,
                                height: 50,
                                image: AssetImage('assets/images/icon_gas.png'),
                              ),
                              Padding(padding: EdgeInsets.only(top: 6)),
                              Text(
                                '立即缴费',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image(
                                width: 50,
                                height: 50,
                                image:
                                    AssetImage('assets/images/icon_record.png'),
                              ),
                              Padding(padding: EdgeInsets.only(top: 6)),
                              Text(
                                '缴费记录',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image(
                                width: 50,
                                height: 50,
                                image: AssetImage(
                                    'assets/images/icon_service.png'),
                              ),
                              Padding(padding: EdgeInsets.only(top: 6)),
                              Text(
                                '我的客服',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image(
                                width: 50,
                                height: 50,
                                image:
                                    AssetImage('assets/images/icon_more.png'),
                              ),
                              Padding(padding: EdgeInsets.only(top: 6)),
                              Text(
                                '敬请期待',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 46,
                          child: Image.asset(
                            'assets/images/icon_notice.png',
                            width: 22,
                            height: 22,
                          ),
                        ),
                        Expanded(
                          child: MarqueeWidget(
                            text: "关于收费标准更改的公告！",
                            scrollAxis: Axis.horizontal,
                            textStyle: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                  padding: EdgeInsets.fromLTRB(10, 4, 20, 4),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 46,
                              child: Image.asset(
                                'assets/images/icon_convenience.png',
                                width: 22,
                                height: 22,
                              ),
                            ),
                            Text(
                              '便民服务',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          '更多',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
                  height: 120,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('业务须知',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                            ),
                            Text('燃气安全，从这里开始。'),
                          ],
                        ),
                      )),
                      Image.asset(
                          'assets/images/ags001.jpeg',
                          width: 160,
                          height: 100,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 120,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('收费标准',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                              ),
                              Text('以上费用是月租。您的账单按实际使用每月自动调整。'),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/ags002.jpg',
                        width: 160,
                        height: 100,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 6),
                  padding: EdgeInsets.fromLTRB(10, 4, 20, 4),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 46,
                              child: Image.asset(
                                'assets/images/icon_blackBoard.png',
                                width: 22,
                                height: 22,
                              ),
                            ),
                            Text(
                              '燃气讲堂',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          '更多',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
                  height: 120,
                  margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('业务须知',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                ),
                                Text('燃气安全，从这里开始。'),
                              ],
                            ),
                          )),
                      Image.asset(
                        'assets/images/ags001.jpeg',
                        width: 160,
                        height: 100,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 120,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('收费标准',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                              ),
                              Text('以上费用是月租。您的账单按实际使用每月自动调整。'),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/ags002.jpg',
                        width: 160,
                        height: 100,
                      )
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
}
