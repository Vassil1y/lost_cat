import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var _controller = TextEditingController();

class Part3 extends StatefulWidget {
  const Part3({Key? key}) : super(key: key);

  @override
  State<Part3> createState() => _Part3();
}

class _Part3 extends State<Part3> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Надпись "11 комментариев"
        Container(
            alignment: Alignment.topLeft,
            child: const Padding(
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
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: TextButton(onPressed: _controller.clear, child: Text("Отпр.")),
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
        SizedBox(height: 270, child: Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 10),
              physics: NeverScrollableScrollPhysics(),
              children:[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2)
                    ),
                    child:Row(
                        children:[
                          Flexible(child: Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Арсений", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                    Padding(padding: EdgeInsets.only(bottom: 6), child:Text("“На Красноармейской пропал каракал” - звучит уже неплохо!")),
                                    Text("Понедельник, 5:33", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                                  ]
                              )
                          )
                          )
                        ]
                    )
                ),
                Row(
                    children:[
                      Flexible(child:Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Дмитрий", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Как вернусь в Ростов, обыщу наши подвалы, я рядом живу")),
                                Text("Понедельник, 6:47", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                              ]
                          )
                      )
                      )
                    ]
                ),
                Row(
                    children:[
                      Flexible(child: Padding(padding: EdgeInsets.only(left: 20, top: 4, bottom: 6, right: 20),
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(padding: EdgeInsets.only(bottom: 6), child:Text("Арсений", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                                Padding(padding: EdgeInsets.only(bottom: 6), child:Text("“На Красноармейской пропал каракал” - звучит уже неплохо!")),
                                Text("Понедельник, 17:33", style: TextStyle(color: Colors.black.withOpacity(0.4)))
                              ]
                          )
                      )
                      )
                    ]
                ),
              ],
            )
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
      ],
    );
  }
}