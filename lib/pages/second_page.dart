import 'package:flutter/material.dart';
import 'package:stateful_navigation_project/components/button_widget.dart';
import 'package:stateful_navigation_project/components/item_component.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int contador = 0;

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
            Spacer(),
            ItemComponent(
              contador: contador + 1,
            ),
            Text(contador.toString()),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador += 1;
                  });
                },
                child: const Text('Increment Button')),
            ButtonWidget(paraOnde: '/', informacao: "Voltar para Home"),
            Padding(padding: EdgeInsets.only(bottom: 10))
          ],
        ),
      ),
    );
  }
}
