import 'package:flutter/material.dart';
import 'package:stateful_navigation_project/components/item_component.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<int> contador = [0, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Page',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Spacer(),
            for (int i in contador)
              ItemComponent(
                  contador: contador[i],
                  button: IconButton(
                    onPressed: () {
                      setState(() {
                        contador.remove(contador.length - 1);
                      });
                    },
                    icon: const Icon(
                      Icons.delete,
                    ),
                    style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.red)),
                  )),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contador.add(contador.length);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: const Text(
                'Adicionar item',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: const Text(
                'Voltar para Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
