import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  final String title;

  const AboutUsScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  List<String> about = [
    "Caro game is a close folk game with everyone especially students.",
    "- Caro game originated from Japan with the name Gomoku.",
    "- Caro can play on paper or simply draw land and use other colored stones to play so close to everyone.",
    "- Caro is a game with simple rule.",
  ];

  @override
  Widget build(BuildContext context) {
    var imageUrl = "assets/about.png";
    // ignore: dead_code, prefer_interpolation_to_compose_strings
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imageUrl,
              width: MediaQuery.of(context).size.width,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: about.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    about[index],
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headline2,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
