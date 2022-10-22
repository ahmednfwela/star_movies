import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone_sp_v2/app_settings//colors.dart';
import 'package:netflix_clone_sp_v2/routes/routes.dart';
import '../r.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final listAvatar = [
      Avatar(image: R.images_avatar1, name: 'Angela',),
      Avatar(image: R.images_avatar2, name: 'Simone',),
      Avatar(image: R.images_avatar3, name: 'Rosaria',),
      Avatar(image: R.images_avatar4, name: 'Gennaro',),
      Avatar(image: R.images_avatar5, name: 'Alessio',),
      Avatar(image: R.images_avatar6, name: 'Luca',),
    ];

    Widget avatar(String image, String name,)
    {
      return Column(
        children: [
          Container(width: 94, height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image,),
              ),
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 5),
            child: Text(name, style: const TextStyle(fontSize: 15, color: whiteColor,),),
          ),
        ],
      );
    }

    return Scaffold(backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(margin: const EdgeInsets.only(top: 20, right: 0, left: 50,),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [SizedBox(),
                  Text('Chi vuole guardare Netflix?', style: TextStyle(color: whiteColor, fontSize: 20,),),
                  Text('Modifica', style: TextStyle(color: whiteColor, fontSize: 15,),)
                ],
              ),
            ),
            Expanded(
              child: GridView.count(crossAxisCount: 2,
                childAspectRatio: 1,
                padding: const EdgeInsets.only(left: 80, right: 80, top: 100,),
                mainAxisSpacing: 44,
                crossAxisSpacing: 20,
                children: listAvatar.map((e) => GestureDetector(onTap: () => router.go(MyRoutes.homePage),
                    child: avatar(e.image, e.name,),
                  ),
                )
                .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Avatar {
  final String image;
  final String name;
  Avatar({required this.image, required this.name,});
}
