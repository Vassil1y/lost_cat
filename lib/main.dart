// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const shlepa_link = "https://s3-alpha-sig.figma.com/img/c8b4/c0bc/264e523dbc555830c1ae7783a2b9fc11?Expires=1658707200&Signature=RnyejWUuBrFn92SP5VZ63MpqE9S9OciiDENn~keQKzOTdMBANwRyNvseWzsg6BMyJeqe6Q2Yv7~TNNbyLFTaFaq0~dT8XQeqwGtRT2UOoAkh6auOaYHIghI857Nf~CBG-oLASHObm0rI0i5J9YIFCIPicrFbYIEsijOu2dx22aLr4n6QmIipCH6rw93Svwa4jBSen9MaBPjqJ8hQxeg~-8aQnjRL-bijEPA1VuyG4bzb6yq-wg-myKzrfRwiJWBsFyAdj4hrYk3nLSLVCffkj7BzM-7qLOWmtjSd-fdsPeh~1436PTPJAXDrDBtMmArR4DLk-pVnDySPNtmZ2OIVDw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";

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

  String textBtn = "Показать номер хозяина";

  void shlepaChanger(int shlepaPage){
    setState(() {
      shlepaPageFinal = "${shlepaPage}${shlepaPages}";
    });
  }

  void buttonChanger(){
    setState(() {
      textBtn = "88005553535";
    });
  }

  void out_teleg(){}
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
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: (){}, icon: Icon(Icons.file_upload)),
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

          child: Container(
        height: 860,
        child: Column(

        children: [
          Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children:[
                SizedBox(
                  height: 231,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Image(image: NetworkImage(shlepa_link)),
                    Image(image: NetworkImage(shlepa_link)),
                    Image(image: NetworkImage(shlepa_link)),
                    Image(image: NetworkImage(shlepa_link)),
                  ],
                  controller: controller,
                  onPageChanged: (number) {shlepaChanger(number+1);},
                )
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)
                  ),

                  margin: EdgeInsets.all(20.5),
                  child: Text(shlepaPageFinal)
                )
              ]
          ),
          Row(
            children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Пропал кот"),
                      Text("Красноармейская улица, 37, Ростов-на-Дону"),
                      Text("Показать на карте", style: TextStyle(color: Colors.green)),
                      Text("На красноармейской пропал каракал..."),
                      TextButton(onPressed: buttonChanger, child: Text(textBtn), style: ButtonStyle()),
                      Text("Поделиться"),
                      Row(
                        children: [
                          IconButton(onPressed: out_teleg, icon: Icon(Icons.start)),
                          IconButton(onPressed: out_wats, icon: Icon(Icons.start)),
                          IconButton(onPressed: out_odnk, icon: Icon(Icons.start)),

                        ]
                      )

                    ],
                  )
            ],
          ),
          Expanded(
            flex: -1,
              child: Column(children: [
            Divider(color: Colors.black),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Номер объявления"),
                    Text("Пол питомца"),
                    Text("Добавлено"),
                    Text("Найдет(а)"),
                    Text("Имя хозяина"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("RF488918"),
                    Text("Мужской"),
                    Text("Вт, 21.09.2021"),
                    Text("Вт, 21.09.2021"),
                    Text("Владимир")
                  ],
                )
              ],
            )
          ]
          )
          ),
          Row(
            children: const [
              Text("Похожие пропавшие")
            ],
          ),
          Expanded(child: Container(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                itemCount:4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(

                    children: const [
                      Image(image: NetworkImage(shlepa_link), height: 200, width: 350),
                      Text("Найдена кошка", style: TextStyle(fontSize: 22)),
                      Text("На западном", style: TextStyle(fontSize: 18))
                    ],
                  );
                }
            ),
          )
          ),
          Row(
            children: [
              Text("ASDASD")
            ],
          ),
          Row(
            children: [
              Text("ASDASD")
            ],
          )

        ],
      ))),
    );
  }
}

