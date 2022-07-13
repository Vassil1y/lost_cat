import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_cat/my_icons.dart' as icn;

import '../main.dart';

class Part4 extends StatefulWidget {
  const Part4({Key? key}) : super(key: key);

  @override
  State<Part4> createState() => _Part4();
}

class _Part4 extends State<Part4> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

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

                //Часть 1
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

                //Дивайдер
                Expanded(
                    flex: 0,
                    child:Divider(color: Colors.black)
                ),

                //Часть 2
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

                //Дивайдер
                Expanded(
                    flex: 0,
                    child:Divider(color: Colors.black.withOpacity(0.6))
                ),

                //Часть 3
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

                //Дивайдер
                Expanded(
                    flex: 0,
                    child:Divider(color: Colors.black.withOpacity(0.6), height: 5,)
                ),

                //Часть 4
                Padding(padding: EdgeInsets.only(top: 10, bottom: 10), child: Text("Связаться с нами", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("8 (800) 350-06-10", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        Text("Пн-Пт с 9:00 до 18:00 (МСК)"),
                      ],
                    ),
                    Expanded(child:Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(padding: EdgeInsets.all(3), child:Icon(icn.MyFlutterApp.vkontakte)),
                            Padding(padding: EdgeInsets.all(3), child:Icon(icn.MyFlutterApp.facebook_official)),
                            Padding(padding: EdgeInsets.all(3), child:Icon(icn.MyFlutterApp.odnoklassniki)),
                            Padding(padding: EdgeInsets.all(3), child:Icon(icn.MyFlutterApp.twitter)),
                          ],
                        )
                      ],
                    ))
                  ],
                ),

                //Дивайдер
                Expanded(
                    flex: 0,
                    child:Divider(color: Colors.black.withOpacity(0.6), height: 70)
                ),

                //Серый текст
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Пропавшие и найденные животные России", style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    Padding(padding: EdgeInsets.only(bottom: 10), child: Text("Пропавшие и найденные животные России по породам", style: TextStyle(color: Colors.black.withOpacity(0.4)))),

                    Text("Политика конфеденциальности", style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    Text("Условия пользования", style: TextStyle(color: Colors.black.withOpacity(0.4))),
                  ],
                )
              ],
            )
        )
      ],
    );
  }
}