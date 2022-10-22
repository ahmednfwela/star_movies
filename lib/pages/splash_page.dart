import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_sp_v2/app_settings/colors.dart';
import 'package:netflix_clone_sp_v2/pages/home_page.dart';
import '../r.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const HomePage(),),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Image.asset(R.images_starmovies_logo1, width: 215, height: 105,),
      ),
    );
  }
}
