import 'package:flutter/material.dart';
import 'package:route/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: const Text("Пропустить",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal))),
                  Image.asset("assets/images/shape.png"),
                ],
              ),
              SizedBox(width: 8),
              const Text(
                "Анализы",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              const Text(
                "Экспресс сбор и получение проб",
                style: TextStyle(color: Colors.black38, fontSize: 14),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                child: const Text('Далее'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()),
                  );
                },
              ),
              SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height  / 3,
                child: Image.asset("assets/images/Illustration.png",fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
