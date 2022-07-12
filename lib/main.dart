// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
const shlepaLink = "https://s3-alpha-sig.figma.com/img/c8b4/c0bc/264e523dbc555830c1ae7783a2b9fc11?Expires=1658707200&Signature=RnyejWUuBrFn92SP5VZ63MpqE9S9OciiDENn~keQKzOTdMBANwRyNvseWzsg6BMyJeqe6Q2Yv7~TNNbyLFTaFaq0~dT8XQeqwGtRT2UOoAkh6auOaYHIghI857Nf~CBG-oLASHObm0rI0i5J9YIFCIPicrFbYIEsijOu2dx22aLr4n6QmIipCH6rw93Svwa4jBSen9MaBPjqJ8hQxeg~-8aQnjRL-bijEPA1VuyG4bzb6yq-wg-myKzrfRwiJWBsFyAdj4hrYk3nLSLVCffkj7BzM-7qLOWmtjSd-fdsPeh~1436PTPJAXDrDBtMmArR4DLk-pVnDySPNtmZ2OIVDw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";
const textKarakalLost = "На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.";
const double totalHeight = 2600;
const double greyPartHeight = 800;

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController controller = PageController(initialPage: 0);

  String shlepaPages = "/4";
  String shlepaPageFinal = "1/4";
  void shlepaChanger(int shlepaPage){
    setState(() {
      shlepaPageFinal = "$shlepaPage$shlepaPages";
    });
  }

  String textBtn = "Показать номер хозяина";
  void buttonChanger(){
    setState(() {
      textBtn = "88005553535";
    });
  }

  void out_appbar(){}

  void like_appbar(){}

  void out_teleg(){
    print("asdasd");
  }
  void out_wats(){}
  void out_odnk(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.green
          ),
        actions: [
          IconButton(onPressed: like_appbar, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: out_appbar, icon: Icon(Icons.file_upload)),
        ],
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace)),
              const Text("Назад", style: TextStyle(color: Colors.green),)
            ],
          )

      ),
      body: SingleChildScrollView(
          child: SizedBox(
              height: totalHeight,
              child: Column(
                children: [

                  //Первая карусель
                  Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children:[
                        SizedBox(
                            height: 231,
                            child: PageView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                              ],
                              controller: controller,
                              onPageChanged: (number) {shlepaChanger(number+1);},
                            )
                        ),
                        Container(
                            height: 22,
                            width: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(7)
                            ),
                            margin: EdgeInsets.all(20.5),
                            child: Text(shlepaPageFinal, style: TextStyle(color: Colors.white))
                        )
                      ]
                  ),

                  //Тексты
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text
                                  (
                                    "Пропал кот",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'MusCurl'
                                    )
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                        "Красноармейская улица, 37, Ростов-на-Дону",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16)
                                    )
                                ),
                                RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Показать на карте",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16
                                              ),
                                              recognizer: TapGestureRecognizer()..onTap = () {out_teleg();}
                                              )
                                        ]
                                    )
                                ),
                              ]
                          )
                      )
                    ]
                  ),

                  //Текст "пропал каракал"
                  Flexible(
                      child:Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                              textKarakalLost,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 17)
                          )
                      )
                  ),

                  //Кнопка с номером
                  SizedBox(
                      width: 370,
                      height: 45,
                      child: TextButton
                        (
                          onPressed: buttonChanger,
                          child: Text(textBtn),
                          style: TextButton.styleFrom
                            (
                              primary: Colors.black,
                              backgroundColor: Colors.green.withOpacity(0.2),
                              onSurface: Colors.grey
                          )
                      )
                  ),

                  //Надпись "поделиться"
                  Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child:Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                              "Поделиться",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              )
                          )
                      )
                  ),

                  //Иконки поделиться
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child:Row(
                          children: [
                            IconButton(onPressed: out_teleg, icon: Icon(Icons.start)),
                            IconButton(onPressed: out_wats, icon: Icon(Icons.start)),
                            IconButton(onPressed: out_odnk, icon: Icon(Icons.start)),
                          ]
                      )
                  ),

                  //Тексты
                  Expanded(
                      flex: -1,
                      child: Column(children: [
                        Expanded(
                            flex: 0,
                            child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child:Divider(color: Colors.black)
                            )
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Номер объявления", style: TextStyle(color: Colors.grey))),
                                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Пол питомца", style: TextStyle(color: Colors.grey))),
                                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Добавлено", style: TextStyle(color: Colors.grey))),
                                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Найдет(а)", style: TextStyle(color: Colors.grey))),
                                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Имя хозяина", style: TextStyle(color: Colors.grey))),
                                      ],
                                    ))),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("RF488918", style: TextStyle(fontWeight: FontWeight.bold))),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Мужской", style: TextStyle(fontWeight: FontWeight.bold))),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Вт, 21.09.2021", style: TextStyle(fontWeight: FontWeight.bold))),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Вт, 21.09.2021", style: TextStyle(fontWeight: FontWeight.bold))),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 8, 0), child: Text("Владимир", style: TextStyle(fontWeight: FontWeight.bold)))
                                  ],
                                )
                            )
                          ],
                        )
                      ]
                      )
                  ),

                  //Надпись "похожие пропавшие"
                  Container(
                      alignment: Alignment.centerLeft,
                      child:Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 5, 0),
                          child:Text(
                              "Похожие пропавшие",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontFamily: 'MusCurl'
                              )
                          )
                      )
                  ),

                  //Список "найдена кошка"
                  Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          scrollDirection: Axis.horizontal,
                          itemCount:4,
                          itemBuilder: (BuildContext context, int index){
                            return Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Container(
                                    height: 200,
                                    width: 350,
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 200,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                image:DecorationImage(image: NetworkImage(shlepaLink)),
                                                color: Colors.black.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(20)
                                            )
                                        ),
                                        Padding(padding: EdgeInsets.only(bottom: 6), child: Text("Найдена кошка, 3-я круговая улица", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold), softWrap: true)),
                                        Padding(padding: EdgeInsets.only(bottom: 6), child: Text("На западном пропала собака овчарка, приветы: рост метров двадцать...", style: TextStyle(fontSize: 18))),
                                        Text("8.10.2021")
                                      ],
                                    )
                                )
                            );
                          }
                          )
                  ),

                  //Надпись "11 комментариев"
                  Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child:Text(
                              "11 комментариев",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontFamily: 'MusCurl'
                              )
                          )
                      )
                  ),

                  //Поле ввода текста для коммента
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.withOpacity(0.2),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: TextButton(onPressed: (){}, child: Text("Отпр.")),
                              hintText: "Ваш комментарий...",
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: const EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2),
                                  width: 2,
                                ),
                              ),

                            )
                        ),
                      ),
                    ),

                  //Список комментариев
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(top: 10),
                        physics: NeverScrollableScrollPhysics(),
                      children:[
                        Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.2)
                                  ),
                                    child:Row(
                                        children:[
                                          Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                                              child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children:[
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Арсений", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                                    Text("“На Красноармейской пропал каракал” -",),
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text(" звучит уже неплохо!")),
                                                    Text("Понедельник, 5:33", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                                                  ]
                                              )
                                          )
                                        ]
                                    )
                                ),
                                Container(
                                    child:Row(
                                        children:[
                                          Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                                              child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children:[
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Дмитрий", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                                    Text("Как вернусь в Ростов, обыщу наши подвалы,"),
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("я рядом живу")),
                                                    Text("Понедельник, 6:47", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                                                  ]
                                              )
                                          )
                                        ]
                                    )
                                ),
                                Container(
                                    child:Row(
                                        children:[
                                          Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                                              child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children:[
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Арсений", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                                    Text("“На Красноармейской пропал каракал” -",),
                                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text(" звучит уже неплохо!")),
                                                    Text("Понедельник, 17:33", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                                                  ]
                                              )
                                          )
                                        ]
                                    )
                                ),
                          ],
                        )
                      ],
                    )
                  ),

                  //Дивайдер
                  Expanded(
                      flex: 0,
                      child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child:Divider(color: Colors.black)
                      )
                  ),

                  //Пожаловаться на объявление
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.warning_amber_outlined, color: Colors.green),
                      Padding(padding: EdgeInsets.only(left: 5), child:Text("Пожаловаться на объявление", style: TextStyle(color: Colors.green)))
                    ]
                  ),

                  //Дивайдер
                  Expanded(
                      flex: 0,
                      child:Divider(color: Colors.grey, height: 1,)
                  ),

                  //Куча текста
                  Container(
                      alignment: Alignment.centerLeft,
                      height: greyPartHeight,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1)
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20), child: Text("Pet911", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                          SizedBox(height: 200, child: Expanded(child: ListView(
                            padding: EdgeInsets.only(top: 10),
                            physics: NeverScrollableScrollPhysics(),
                            children: const [
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Разместите объявление")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Платные услуги")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Полезные советы")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Отзывы")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Вопросы-ответы")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("О нас")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Контакты")),
                            ],
                          )
                          )),
                          Expanded(
                              flex: 0,
                              child:Divider(color: Colors.black)
                          ),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text("Ускорьте поиск питомца", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                          SizedBox(height: 180, child: Expanded(child: ListView(
                            padding: EdgeInsets.only(top: 10),
                            physics: NeverScrollableScrollPhysics(),
                            children: const [
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Распространите объявление в социальных сетях")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Оповестите клиники и приюты")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Сообщите волонтёрам о пропаже")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Оповестите жителей района")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Создайте премиум-объявление")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Получайте уведомления о похожих питомцах")),
                            ],
                          )
                          )
                          ),
                          Expanded(
                              flex: 0,
                              child:Divider(color: Colors.black.withOpacity(0.6))
                          ),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text("Помощь", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                          SizedBox(height: 70, child: Expanded(child: ListView(
                            padding: EdgeInsets.only(top: 10),
                            physics: NeverScrollableScrollPhysics(),
                            children: const [
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Станьте волонтёром")),
                              Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child: Text("Поддержите проект")),
                            ],
                          )
                          )
                          ),
                          Expanded(
                              flex: 0,
                              child:Divider(color: Colors.black.withOpacity(0.6), height: 5,)
                          ),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text("Связаться с нами", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                        ],
                      )
                  )

                ],
              )
          )
      ),
    );
  }
}

