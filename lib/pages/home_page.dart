import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActive = false;
  String text = 'Este não é um botão';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            text = 'Agora é um botão';
          });
        },
        child: Text(text),
      ),
    );
  }
}

// ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: isActive ? Colors.blue : Colors.yellow,
//         ),
//         child: const Text('Este é um botão'),
//         onPressed: () {
//           setState(() {
//             isActive = !isActive;
//           });
//         },
//       )
