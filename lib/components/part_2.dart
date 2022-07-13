



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const shlepaLink = "https://s3-alpha-sig.figma.com/img/c8b4/c0bc/264e523dbc555830c1ae7783a2b9fc11?Expires=1658707200&Signature=RnyejWUuBrFn92SP5VZ63MpqE9S9OciiDENn~keQKzOTdMBANwRyNvseWzsg6BMyJeqe6Q2Yv7~TNNbyLFTaFaq0~dT8XQeqwGtRT2UOoAkh6auOaYHIghI857Nf~CBG-oLASHObm0rI0i5J9YIFCIPicrFbYIEsijOu2dx22aLr4n6QmIipCH6rw93Svwa4jBSen9MaBPjqJ8hQxeg~-8aQnjRL-bijEPA1VuyG4bzb6yq-wg-myKzrfRwiJWBsFyAdj4hrYk3nLSLVCffkj7BzM-7qLOWmtjSd-fdsPeh~1436PTPJAXDrDBtMmArR4DLk-pVnDySPNtmZ2OIVDw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";


class Part2 extends StatefulWidget {
  const Part2({Key? key}) : super(key: key);

  @override
  State<Part2> createState() => _Part2();
}

class _Part2 extends State<Part2> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SizedBox(height: 311, child: Expanded(
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
        )
        ),

      ],
    );



  }
}