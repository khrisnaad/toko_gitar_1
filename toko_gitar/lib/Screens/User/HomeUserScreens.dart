import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

import '../../Components/User/HomeUserComponents.dart';

class HomeUserScreen extends StatelessWidget {
  static String routeName = "/home_user";
  static var dataUserLogin;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    dataUserLogin = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "GIBag",
          style: TextStyle(color: mTitleColor, fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.home,
          color: mTitleColor,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: mTitleColor,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: HomeUserComponent(),
    );
  }
}
