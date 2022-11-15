import 'package:flutter/material.dart';
import 'check_player_win.dart';
import 'config/config.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int map = 150;
  List<IconData?> items = List.generate(150, (index) => null);
  bool check = true;
  Color colorPlayer1 = Colors.blue;
  Color colorPlayer2 = Colors.red;
  List<Color?> colors = List.generate(150, (index) => null);
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code, prefer_interpolation_to_compose_strings
    String turn = "Turn: Player " + (check ? "1" : "2");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: map,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 10,
                      ),
                      itemBuilder: (context, index) {
                        IconData? item = items[index];
                        Color? color = colors[index];
                        return InkWell(
                          onTap: () async {
                            setState(
                              () {
                                if (items[index] == null) {
                                  Audio.tapAudio(audioTap, 10.0).then(
                                    (value) => {},
                                  );

                                  if (check) {
                                    check = false;
                                    items[index] = Icons.close;
                                    colors[index] = colorPlayer1;
                                  } else {
                                    check = true;
                                    items[index] = Icons.circle_outlined;
                                    colors[index] = colorPlayer2;
                                  }
                                  CheckPlayerWin(items, check, context);
                                }
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            child: Icon(
                              item,
                              color: color,
                              size: 30.0,
                            ),
                          ),
                        );
                      },
                    ))),
            Text(turn, style: Theme.of(context).textTheme.headline5),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Row(
                children: [
                  const Icon(
                    Icons.close,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  Text("Layer 1", style: Theme.of(context).textTheme.headline5),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.circle_outlined,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  Text("Layer 2", style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ]),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
