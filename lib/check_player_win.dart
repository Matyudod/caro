// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'config/config.dart';
import 'provider/provider_export.dart';
import 'dart:core';
import 'detail.dart';

class CheckPlayerWin {
  String? playerInfo;
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    var playerWinned = "${arguments.toString()} win!";
    var imageUrl = "assets/winner.png";
    Color textColor = Theme.of(context).primaryColor;
    Color backgroundColor = Theme.of(context).backgroundColor;
    return DialogRoute<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(
              child: Image.asset(
                imageUrl,
                width: 100.0,
                height: 100.0,
              ),
            ),
            content: Text(
              playerWinned,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            actions: <Widget>[
              TextButton(
                  style:
                      ButtonCustomTheme.style_mini(textColor, backgroundColor),
                  onPressed: () {
                    audioPlayer.setVolume(volume / 4).then(
                          (value) => {},
                        );
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const DetailsScreen();
                      },
                    ));
                  },
                  child: Text(
                    'New game',
                    style: Theme.of(context).textTheme.headline3,
                  )),
              TextButton(
                style: ButtonCustomTheme.style_mini(textColor, backgroundColor),
                onPressed: () {
                  audioPlayer.setVolume(volume / 4).then(
                        (value) => {},
                      );
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Exit',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          );
        });
  }

  CheckPlayerWin(List<IconData?> items, bool player, BuildContext context) {
    var check = false;
    for (int i = 0; i < items.length; i++) {
      if (!player) {
        if (items[i] == Icons.close) {
          if (items[i + 1] != null && items[i + 1] == Icons.close) {
            if (items[i + 2] != null && items[i + 2] == Icons.close) {
              if (items[i + 3] != null && items[i + 3] == Icons.close) {
                if (items[i + 4] != null && items[i + 3] == Icons.close) {
                  check = true;
                }
              }
            }
          } else if (items[i + 10 * 1] != null &&
              items[i + 10 * 1] == Icons.close) {
            if (items[i + 10 * 2] != null && items[i + 10 * 2] == Icons.close) {
              if (items[i + 10 * 3] != null &&
                  items[i + 10 * 3] == Icons.close) {
                if (items[i + 10 * 4] != null &&
                    items[i + 10 * 4] == Icons.close) {
                  check = true;
                }
              }
            }
          } else if (items[i + 1 + 10 * 1] != null &&
              items[i + 1 + 10 * 1] == Icons.close) {
            if (items[i + 2 + 10 * 2] != null &&
                items[i + 2 + 10 * 2] == Icons.close) {
              if (items[i + 3 + 10 * 3] != null &&
                  items[i + 3 + 10 * 3] == Icons.close) {
                if (items[i + 4 + 10 * 4] != null &&
                    items[i + 4 + 10 * 4] == Icons.close) {
                  check = true;
                }
              }
            }
          } else if (items[i - 1 + 10 * 1] != null &&
              items[i - 1 + 10 * 1] == Icons.close) {
            if (items[i - 2 + 10 * 2] != null &&
                items[i - 2 + 10 * 2] == Icons.close) {
              if (items[i - 3 + 10 * 3] != null &&
                  items[i - 3 + 10 * 3] == Icons.close) {
                if (items[i - 4 + 10 * 4] != null &&
                    items[i - 4 + 10 * 4] == Icons.close) {
                  check = true;
                }
              }
            }
          }
        }
      } else {
        if (items[i] == Icons.circle_outlined) {
          if (items[i + 1] != null && items[i + 1] == Icons.circle_outlined) {
            if (items[i + 2] != null && items[i + 2] == Icons.circle_outlined) {
              if (items[i + 3] != null &&
                  items[i + 3] == Icons.circle_outlined) {
                if (items[i + 4] != null &&
                    items[i + 3] == Icons.circle_outlined) {
                  check = true;
                }
              }
            }
          } else if (items[i + 10 * 1] != null &&
              items[i + 10 * 1] == Icons.circle_outlined) {
            if (items[i + 10 * 2] != null &&
                items[i + 10 * 2] == Icons.circle_outlined) {
              if (items[i + 10 * 3] != null &&
                  items[i + 10 * 3] == Icons.circle_outlined) {
                if (items[i + 10 * 4] != null &&
                    items[i + 10 * 4] == Icons.circle_outlined) {
                  check = true;
                }
              }
            }
          } else if (items[i + 1 + 10 * 1] != null &&
              items[i + 1 + 10 * 1] == Icons.circle_outlined) {
            if (items[i + 2 + 10 * 2] != null &&
                items[i + 2 + 10 * 2] == Icons.circle_outlined) {
              if (items[i + 3 + 10 * 3] != null &&
                  items[i + 3 + 10 * 3] == Icons.circle_outlined) {
                if (items[i + 4 + 10 * 4] != null &&
                    items[i + 4 + 10 * 4] == Icons.circle_outlined) {
                  check = true;
                }
              }
            }
          } else if (items[i - 1 + 10 * 1] != null &&
              items[i - 1 + 10 * 1] == Icons.circle_outlined) {
            if (items[i - 2 + 10 * 2] != null &&
                items[i - 2 + 10 * 2] == Icons.circle_outlined) {
              if (items[i - 3 + 10 * 3] != null &&
                  items[i - 3 + 10 * 3] == Icons.circle_outlined) {
                if (items[i - 4 + 10 * 4] != null &&
                    items[i - 4 + 10 * 4] == Icons.circle_outlined) {
                  check = true;
                }
              }
            }
          }
        }
      }
    }
    //Write data to file
    MapStorage mapStorage = MapStorage();
    mapStorage.writeCounter(items);

    // ignore: avoid_print, prefer_interpolation_to_compose_strings
    if (check) {
      playerInfo = "Player ${!player ? "1" : "2"}";
      audioPlayer.setVolume(minVolume).then(
            (value) => {},
          );
      Audio.winAudio(audioWin, volume).then(
        (value) => {},
      );
      Navigator.of(context)
          .restorablePush(_dialogBuilder, arguments: playerInfo);
    }
  }
}
