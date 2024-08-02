import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // los colors Scheme del context de este widget
    final colors = Theme.of(context).colorScheme;
    // Para verlos en debug console
    // print('estos son los colorScheme: ..$colors');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Yes or No ?',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
