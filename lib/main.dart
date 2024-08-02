import 'package:flutter/material.dart';
import 'package:yes_or_no_app/Config/app_theme.dart';
import 'package:yes_or_no_app/Pages/chat_screen.dart';

void main() => runApp(const YesOrNoApp());

class YesOrNoApp extends StatelessWidget {
  const YesOrNoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // A one-line description used by the device to identify the app for the user
      title: 'Material App',
      // retiramos el debug icon barner
      debugShowCheckedModeBanner: false,
      // Configuramos el tema para materialApp co el elemento 1
      // en este caso es Blue
      theme: AppTheme(selectedColor: 1).theme(),
      // configramos la pantalla de ChatScreen como home:
      home: const ChatScreen(),
    );
  }
}
