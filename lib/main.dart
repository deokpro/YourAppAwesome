import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/routes/routes.dart';
import 'package:yourappawesome/store/kakao_store.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => KakaoStore())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeMain.routeName, 
        routes: routes,
      ),
    );
  }
}

