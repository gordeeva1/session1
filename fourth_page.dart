import 'package:flutter/material.dart';

import 'five_page.dart';

class fourth_page extends StatelessWidget {
  const fourth_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text("Добро пожаловать!", style: TextStyle(color: Colors.black, fontSize: 28)),
              const Text("Войдите, чтобы пользоваться функциями приложения", style: TextStyle(color: Colors.black54, fontSize: 14)),
          TextField(

            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'example@mail.ru',
            ),
          ),
              ElevatedButton(
                child: const Text(' Далее'),
                onPressed: null
              ),
              SizedBox(width: 15),
              Container(
                child: Text("Или войдите с помощью", style: TextStyle(color: Colors.black38, fontSize: 14),),
              ),
                ElevatedButton(
                child: const Text('Войти с Яндекс'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const five_page()),
                  );
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}
