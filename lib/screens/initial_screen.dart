import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projeto_1/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue.shade900,
        color: Colors.blue.shade500,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.headset_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
      appBar: AppBar(
        leading: Container(),
        title: const Text('Aulas'),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 700),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          children: const [
            Task('Aula de Flutter', 'assets/images/flutter.png', 3),
            Task('Aula de React Native', 'assets/images/reactnative.png', 3),
            Task('Aula de Firebase', 'assets/images/firebase.png', 5),
            Task('Aula de C#', 'assets/images/csharp.png', 4),
            Task('Aula de Java', 'assets/images/java.png', 2),
            Task('Aula de JavaScript', 'assets/images/javascript.png', 1),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: opacidade == true
            ? Icon(Icons.remove_red_eye_outlined)
            : Icon(Icons.remove_red_eye),
      ),
    );
  }
}
