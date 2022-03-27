import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_chat.dart';

class KakaoChatPage extends StatefulWidget {
  static String routeName = "/KakaoChatPage";
  const KakaoChatPage({ Key? key }) : super(key: key);

  @override
  State<KakaoChatPage> createState() => _KakaoChatPageState();
}

class _KakaoChatPageState extends State<KakaoChatPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController =  TextEditingController();
    return Container(
      color: const Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("홍길동", style: Theme.of(context).textTheme.headline6,),
          iconTheme: const IconThemeData(
            size: 20
          ),
          actions: const [
            Icon(FontAwesomeIcons.search,),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xFF9cafbe),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('2021년 1월 1일 금요일', style: TextStyle(fontSize: 12, color: Colors.white),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kakaoChats.length,
                itemBuilder: (context, index) {
                return kakaoChats[index].title == "홍길동"
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 3,
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: NetworkImage(kakaoChats[index].image),),
                        title: Text(kakaoChats[index].title),
                        subtitle: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(kakaoChats[index].content)),
                      ),
                    ),
                    Flexible(flex: 2, child: Text(kakaoChats[index].time)),
                  ],
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(flex: 2, child: Text(kakaoChats[index].time)),
                    Flexible(
                      flex: 2,
                      child: ListTile(
                        subtitle: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Text(kakaoChats[index].content, style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.plusSquare)),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      cursorColor: Colors.black,
                      onSubmitted: (text) {
                        setState(() {
                          _textController.clear();
                          const String _urlPrefix =
                            "https://picsum.photos/200?random=55";
                          kakaoChats.add(KakaoModelChat(
                            image: _urlPrefix,
                            title: "정도전",
                            content: text,
                            time: "오전 09:30",
                            count: "1",
                          ));
                        });
                      },
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.smile)),
                  IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cog)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}