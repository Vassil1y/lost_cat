import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const textKarakalLost = "На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.";


class Part1 extends StatefulWidget {
  const Part1({Key? key}) : super(key: key);

  @override
  State<Part1> createState() => _Part1();
}

class _Part1 extends State<Part1> {

  bool phone = true;
  String textBtn = "Показать номер хозяина";
  void buttonChanger(){
    if(phone){
      setState(() {
        textBtn = "88005553535";
      });
    }
    else{
      setState(() {
        textBtn = "Показать номер хозяина";
      });
    }
    phone=!phone;

  }



  //Тексты
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
          children: [
            Flexible(child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      const Text
                        (
                          "Пропал кот",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MusCurl'
                          )
                      ),
                      const Padding(
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
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'Roboto',
                                        fontSize: 16
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}
                                )
                              ]
                          )
                      ),
                    ]
                )
            )
            ),
          ]
      ),
      //Текст "пропал каракал"
      const SizedBox(height: 178, child:Flexible(
          child:Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                  textKarakalLost,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17)
              )
          ))
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
          child:const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                  "Поделиться",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  )
              )
          )
      )
    ]
    );
  }
  }