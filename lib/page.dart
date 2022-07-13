// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'my_icons.dart' as icn;
import 'components/part_1.dart';
import 'components/part_2.dart';
import 'components/part_3.dart';
import 'components/part_4.dart';


const shlepaLink = "https://s3-alpha-sig.figma.com/img/c8b4/c0bc/264e523dbc555830c1ae7783a2b9fc11?Expires=1658707200&Signature=RnyejWUuBrFn92SP5VZ63MpqE9S9OciiDENn~keQKzOTdMBANwRyNvseWzsg6BMyJeqe6Q2Yv7~TNNbyLFTaFaq0~dT8XQeqwGtRT2UOoAkh6auOaYHIghI857Nf~CBG-oLASHObm0rI0i5J9YIFCIPicrFbYIEsijOu2dx22aLr4n6QmIipCH6rw93Svwa4jBSen9MaBPjqJ8hQxeg~-8aQnjRL-bijEPA1VuyG4bzb6yq-wg-myKzrfRwiJWBsFyAdj4hrYk3nLSLVCffkj7BzM-7qLOWmtjSd-fdsPeh~1436PTPJAXDrDBtMmArR4DLk-pVnDySPNtmZ2OIVDw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";
const double totalHeight = 2427;
const double greyPartHeight = 833;

enum SocialMedia { vkontakte, odnoklassniki, facebook }


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

  void out_appbar(){Share.share('Я помогаю искать животных!');}

  bool like = false;
  Icon like_icon = Icon(Icons.favorite_border, color: Colors.green);
  void like_appbar(){
    if(like){
      like=false;
      setState(() {
        like_icon = Icon(Icons.favorite_border, color: Colors.green);
      });
    }
    else{
      like = true;
      setState(() {
        like_icon = Icon(Icons.favorite, color: Colors.red);
      });
    }
  }

  Future share(SocialMedia socialPlatform) async{

    final urls = {
      SocialMedia.vkontakte:
      'http://vk.com/share.php?url=&title=&description=&text=&image=&noparse=true',
      SocialMedia.odnoklassniki:
      'https://ok.ru/dk?st.cmd=anonymMain&st.redirect=%2Fpost',
      SocialMedia.facebook:
      'https://www.facebook.com/sharer/sharer.php?u=&picture='
    };

    final url = urls[socialPlatform]!;

    await launch(url);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.green
          ),
          actions: [
            IconButton(onPressed: like_appbar, icon: like_icon),
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
                            height: 215,
                            child: PageView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                                Image(image: NetworkImage(shlepaLink)),
                              ],
                              controller: controller,
                              onPageChanged: (number){shlepaChanger(number+1);},
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


                  //Часть 1
                  Part1(),


                  //Иконки поделиться
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child:Row(
                          children: [
                            IconButton(onPressed: ()=>share(SocialMedia.vkontakte), icon: Icon(icn.MyFlutterApp.vkontakte)),
                            IconButton(onPressed:()=>share(SocialMedia.odnoklassniki), icon: Icon(icn.MyFlutterApp.odnoklassniki)),
                            IconButton(onPressed: ()=>share(SocialMedia.facebook), icon: Icon(icn.MyFlutterApp.facebook)),
                          ]
                      )
                  ),


                  //Часть 2
                  Part2(),


                  //Часть 3
                  Part3(),


                  //Дивайдер
                  Expanded(
                      flex: 0,
                      child:Divider(color: Colors.grey, height: 1,)
                  ),

                  //Часть 4
                  Part4()
                ],
              )
          )
      ),
    );
  }
}

