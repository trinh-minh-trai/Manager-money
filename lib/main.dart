import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';
import 'package:trackizer/view/login/welcome_view.dart';
import 'package:trackizer/view/main_tab/main_tab_view.dart';
import 'package:trackizer/view/login/sign_in_view.dart';
import 'package:trackizer/view/login/social_login.dart';
import 'package:trackizer/view/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:trackizer/service/auth.dart';
import 'package:trackizer/model/user.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          title: 'Trackizer',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Inter",
            colorScheme: ColorScheme.fromSeed(
              seedColor: TColor.primary,
              background: TColor.gray80,
              primary: TColor.primary,
              primaryContainer: TColor.gray60,
              secondary: TColor.secondary,
            ),
            useMaterial3: false,
          ),
          home: Wrapper(),
        ),
    );
  }
}
