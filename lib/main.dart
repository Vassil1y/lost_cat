// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page.dart';

const shlepaLink = "https://s3-alpha-sig.figma.com/img/c8b4/c0bc/264e523dbc555830c1ae7783a2b9fc11?Expires=1658707200&Signature=RnyejWUuBrFn92SP5VZ63MpqE9S9OciiDENn~keQKzOTdMBANwRyNvseWzsg6BMyJeqe6Q2Yv7~TNNbyLFTaFaq0~dT8XQeqwGtRT2UOoAkh6auOaYHIghI857Nf~CBG-oLASHObm0rI0i5J9YIFCIPicrFbYIEsijOu2dx22aLr4n6QmIipCH6rw93Svwa4jBSen9MaBPjqJ8hQxeg~-8aQnjRL-bijEPA1VuyG4bzb6yq-wg-myKzrfRwiJWBsFyAdj4hrYk3nLSLVCffkj7BzM-7qLOWmtjSd-fdsPeh~1436PTPJAXDrDBtMmArR4DLk-pVnDySPNtmZ2OIVDw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";
const textKarakalLost = "На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.";
const double totalHeight = 2394;
const double greyPartHeight = 833;

enum SocialMedia { vkontakte, odnoklassniki, facebook }


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

