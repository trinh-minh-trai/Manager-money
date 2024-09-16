import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/view/settings/settings_view.dart';
import 'package:trackizer/service/auth.dart';


class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {

  SwiperController controller = SwiperController();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Éc Éc'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            label: Text('logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ]
      ),
    );
  }
}
