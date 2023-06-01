import 'dart:math';

import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(home: questionsProfilePage()));
}

class questionsProfilePage extends StatelessWidget {
  questionsProfilePage({Key? key}) : super(key: key);

  var image = [
    {'photo': 'assets/images/item1.jpg'},
    {'photo': 'assets/images/item2.jpg'},
    {'photo': 'assets/images/item3.jpg'},
    {'photo': 'assets/images/item4.jpg'},
    {'photo': 'assets/images/item5.jpg'},
  ];

  var image2 = [
    {'photo': 'assets/images/item6.jpg'},
    {'photo': 'assets/images/item7.jpg'},
    {'photo': 'assets/images/item8.jpg'},
    {'photo': 'assets/images/item9.jpg'},
    {'photo': 'assets/images/item10.jpg'},
  ];

  var image3 = [
    {'photo': 'assets/images/item11.jpg'},
    {'photo': 'assets/images/item12.jpg'},
    {'photo': 'assets/images/item13.jpg'},
    {'photo': 'assets/images/item14.jpg'},
    {'photo': 'assets/images/item15.jpg'},
  ];

  var listQuestion = [
    {
      'title': 'ХИЯШИ',
      'description':
          'Запеченный ролл со сливочным сыром, угрем, помидоркой. Сверху соус лава и унаги соус.',
      'weight': 'Вес: 270г.',
      'price': '359 руб.',
    },
    {
      'title': 'НАГАСАКИ',
      'description':
          'Запеченный ролл с плавленым сыром и с пикантным соусом Нагасаки.',
      'weight': 'Вес: 205г.',
      'price': '279 руб.',
    },
    {
      'title': 'ЧУКА МАКИ',
      'description': 'Полезный легкий ролл с водорослями чука.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
    {
      'title': 'АВОКАДО МАКИ',
      'description': 'Легкий ролл со свежим авокадо.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
    {
      'title': 'ЭБИ МАКИ',
      'description': 'Легкий ролл с креветкой.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
  ];

  var listQuestion2 = [
    {
      'title': 'ТЕККА МАКИ',
      'description': 'Легкий ролл с тунцом.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
    {
      'title': 'КАППА СЯКЕ МАКИ',
      'description': 'Лосось, свежий огурчик.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
    {
      'title': 'КАППА МАКИ',
      'description': 'Легкий ролл со свежим огурчиком и кунжутом.',
      'weight': 'Вес: 105г.',
      'price': '159 руб.',
    },
    {
      'title': 'ФИЛАДЕЛЬФИЯ МАКИ',
      'description': 'Ролл с нежным сыром и лососем.',
      'weight': 'Вес: 100г.',
      'price': '159 руб.',
    },
    {
      'title': 'УНАГИ МАКИ',
      'description': 'Ролл с копченым угрем. Сверху украшен семечками кунжута',
      'weight': 'Вес: 100г.',
      'price': '199 руб.',
    },
  ];

  var listQuestion3 = [
    {
      'title': 'ВУЛКАН',
      'description': 'Ролл с кунжутом, мясом краба (имитация) и Спайс соусом.',
      'weight': 'Вес: 140г.',
      'price': '145 руб.',
    },
    {
      'title': 'БОЛЬШОЙ ТОМАГО',
      'description':
          'Ролл со свежим лососем, икрой тобико, нежным японским омлетом и огурчиком.',
      'weight': 'Вес: 210г.',
      'price': '279 руб.',
    },
    {
      'title': 'НЕОБЫЧНЫЕ СЯКЕ МАКИ',
      'description': 'Ролл с нежным лососем, обернут в рисовую бумагу.',
      'weight': 'Вес: 100г.',
      'price': '199 руб.',
    },
    {
      'title': 'КАНИ СЯКЕ МАКИ',
      'description':
          'Нежный сливочный сыр, лосось, огурчик и нежное мясо краба (имитация).',
      'weight': 'Вес: 220г.',
      'price': '279 руб.',
    },
    {
      'title': 'НАГАНО',
      'description':
          'Необычный ролл с красной тобико, японским омлетом и нежным сливочным сыром.',
      'weight': 'Вес: 200г.',
      'price': '249 руб.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFF1F2F2)),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(image[index]['photo']!),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                      child: Text(
                                        listQuestion[index]['title']!,
                                        style: TextStyle(
                                            color: const Color(0xFFBF2631),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                      child: Text(
                                        listQuestion[index]['description']!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: const Color(0xFF323232),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xFFF1F2F2),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/images/icon-scales.png'),
                                            SizedBox(width: 5),
                                            Text(
                                              listQuestion[index]['weight']!,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xFF323232),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )),
                                    Container(
                                      color: Color(0xFFF1F2F2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                10, 10, 0, 10),
                                            child: Text(
                                              listQuestion[index]['price']!,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xFF323232),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 10, 10, 10),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Color(0xFF39A531)),
                                              child: Text('КУПИТЬ'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFFF1F2F2)),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(image2[index]['photo']!),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 20, 0, 10),
                                          child: Text(
                                            listQuestion2[index]['title']!,
                                            style: TextStyle(
                                                color: const Color(0xFFBF2631),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Text(
                                            listQuestion2[index]
                                                ['description']!,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: const Color(0xFF323232),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xFFF1F2F2),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/icon-scales.png'),
                                                SizedBox(width: 5),
                                                Text(
                                                  listQuestion2[index]
                                                      ['weight']!,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF323232),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            )),
                                        Container(
                                          color: Color(0xFFF1F2F2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    10, 10, 0, 10),
                                                child: Text(
                                                  listQuestion[index]['price']!,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF323232),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 10, 10, 10),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Color(
                                                              0xFF39A531)),
                                                  child: Text('КУПИТЬ'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFFF1F2F2)),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(image3[index]['photo']!),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 20, 0, 10),
                                          child: Text(
                                            listQuestion2[index]['title']!,
                                            style: TextStyle(
                                                color: const Color(0xFFBF2631),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Text(
                                            listQuestion2[index]
                                                ['description']!,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: const Color(0xFF323232),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xFFF1F2F2),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/icon-scales.png'),
                                                SizedBox(width: 5),
                                                Text(
                                                  listQuestion2[index]
                                                      ['weight']!,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF323232),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            )),
                                        Container(
                                          color: Color(0xFFF1F2F2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    10, 10, 0, 10),
                                                child: Text(
                                                  listQuestion[index]['price']!,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF323232),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 10, 10, 10),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Color(
                                                              0xFF39A531)),
                                                  child: Text('КУПИТЬ'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 30);
                },
                shrinkWrap: true,
                itemCount: listQuestion.length)),
      ),
    );
  }
}
