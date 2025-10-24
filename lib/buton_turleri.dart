import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      body: Center(
        child: Center(
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: Text("Text Button")),
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.brown),
                ),
                label: Text("Text Button With Icon"),
                icon: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child: Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Elevated Button"),
                icon: Icon(Icons.access_alarm),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.indigo, width: 5),
                ),
                child: Text("Outlined Button"),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: Text("Outlined Button"),
                icon: Icon(Icons.access_alarm),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
