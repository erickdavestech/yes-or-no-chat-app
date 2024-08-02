import 'package:flutter/material.dart';
import 'package:yes_or_no_app/Widgets/chat/her_chat_bubble.dart';
import 'package:yes_or_no_app/Widgets/chat/his_chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        // Agregamos relleno al  CircleAvatar que contiene una imagen
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            // Image for Internet
            backgroundImage: NetworkImage(
                'https://plus.unsplash.com/premium_photo-1689564003745-946f35267ffe?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d29tZW4lMjBwcm9maWxlJTIwcGljdHVyZXxlbnwwfHwwfHx8MA%3D%3D'),
          ),
        ),
        // Name for the avatar Piceture
        title: const Text('Lic jaragua'),
      ),
      body: _ChatView(),
    );
  }
}

// Private Class for Styling the message
// A Collum that is expanded and has a Listview.builder
// Se crearan los elementos a demanda y no todos a la vez

// Visual mente seria de esta manera
// Alternamos segun el indice para cada pantalla en la lista
/*
Visualización:
Elemento 0: HerMessageBubble
Elemento 1: HisMessageBubble
Elemento 2: HerMessageBubble
Elemento 3: HisMessageBubble
*/
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const HisMessageBubble();
            },
          ))
        ],
      ),
    ));
  }
}
