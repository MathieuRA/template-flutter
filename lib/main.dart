import 'package:flutter/material.dart';
import 'package:gobet/utils/color_notifire.dart';
import 'package:provider/provider.dart';

import 'onbonding_screen/splesh_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ColorNotifire()),
      ],
      child: MaterialApp(
        home: Splesh_Screen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
