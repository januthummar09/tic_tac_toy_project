import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../function/function.dart';
import '../model/get_button.dart';

class TicTacToeScreen extends StatefulWidget {
  // final String name;
  const TicTacToeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  Timer? timer;

  static const maxSeconds = 10;
  int second = maxSeconds;

  int userCount = 0;
  int computerCount = 0;

  List<GetButton>? listData;

  String cross = "assets/images/12-123212_delete-tic-tac-toe-cross.png";
  String circle = "assets/images/circle.png";

  bool isDisable = true;

  getList() {
    List<GetButton> getButton = [
      GetButton("janki", "00"),
      GetButton("janki", "10"),
      GetButton("janki", "20"),
      GetButton("janki", "01"),
      GetButton("janki", "11"),
      GetButton("janki", "21"),
      GetButton("janki", "02"),
      GetButton("janki", "12"),
      GetButton("janki", "22"),
    ];

    return getButton;
  }

  void initState() {
    // TODO: implement initState
    super.initState();

    listData = getList();
  }

  bool isMyTurn = true;

  List<List<int>> data = [
    [-1, -1, -1],
    [-1, -1, -1],
    [-1, -1, -1]
  ];
  // var r = new Random();
  //
  // randomListItem(List data) => data[r.nextInt(data.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      // widget.name,
                      "player 1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(userCount.toString()),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Player2",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(computerCount.toString()),
                  ],
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              itemCount: listData!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => Text(listData![index].index.toString()),
            ),
            const SizedBox(
              // height: 70,
              height: 10,
            ),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
                childAspectRatio: 1 / 1,
              ),
              itemCount: 09,
              itemBuilder: (context, index) {
                int i = index % 3;
                int j = index ~/ 3;

                int obj = data[i][j];

                // debugPrint("obj-->>$obj");

                // var title = '';
                var title;

                if (obj == 1) {
                  // title = 'X';
                  title = "assets/images/12-123212_delete-tic-tac-toe-cross.png";
                } else if (obj == 0) {
                  // title = 'O';
                  title = "assets/images/circle.png";
                }

                // debugPrint("bg color -------->> ${buttonList[index].bg}");
                return InkWell(
                  onTap: () async {
                    // final isRunning = timer == null ? false : timer.isActive;
                    // if (isRunning) {
                    if (data[i][j] == -1) {
                      debugPrint("after fun---> $isMyTurn");

                      if (isMyTurn) {
                        debugPrint("after fun---======> $isMyTurn");

                        debugPrint("before------>>${data[i][j]}");

                        data[i][j] = 0;

                        isMyTurn = false;

                        debugPrint("after------>>${data[i][j]}");
                      } else {
                        debugPrint("before  1------>>${data[i][j]}");

                        data[i][j] = 1;

                        debugPrint("after 1------>>${data[i][j]}");

                        // if (isDisable == false) {
                        //   data[i][j] = 1;
                        //   debugPrint("after 1------>>${data[i][j]}");
                        // }
                      }
                      setState(() {});
                    }
                    // }

                    // win();

                    // setState(() {
                    //   isMyTurn = !isMyTurn;
                    // });

                    // debugPrint("after fun---> $isMyTurn");

                    if (!isMyTurn) {
                      //SET COMPUTER TURN

                      debugPrint("========");

                      await computerTurn();

                      // debugPrint("not turn---------");
                      // debugPrint("before isDisable--------$isDisable");

                      setState(() {
                        isMyTurn = true;
                        // isDisable = !isDisable;
                      });

                      // debugPrint("after isDisable--------$isDisable");

                      // data[i][j] = 0;
                    } else {
                      // debugPrint("after else---> $isMyTurn");
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: const Color(0XFFe6eef2),
                      // padding: EdgeInsets.symmetric(
                      //   vertical: 20,
                      //   horizontal: 2,
                      // ),
                      child: title == null
                          ? const SizedBox()
                          : Center(
                              child: Image.asset(
                                title.toString(),
                                height: 12,
                              ),

                              // Text(title),
                            ),
                    ),
                  ),
                );
              },
            ),
            // buildTimer(),

            const SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed: () {
                // check();
                reset();
                var x = getData();
                debugPrint("x-->>$x");

                // var element = getRandomElement(data);
                // print(element);
              },

              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFe6eef2),
              ),
              // color: Colors.red,
              // padding: EdgeInsets.all(20),
              // onPressed: resetGame2,
            ),
          ],
        ),
      ),
    );
  }

  count(int winner) {
    if (winner == 1) {
      setState(() {
        computerCount++;
      });
    } else if (winner == 0) {
      setState(() {
        userCount++;
      });
    }
  }

  void reset() {
    int i, j;

    for (i = 0; i < data.length; i++) {
      var innerList = data[i];
      for (j = 0; j < innerList.length; j++) {
        // print("List  ----->>  ${data[i][j]}");

        setState(() {
          data[i][j] = -1;
        });

        // print("reset  ----->>  ${data[i][j]}");
      }
      // print("reset  ----->>  ${data}");
    }
  }

  T getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  int getData() {
    var list = [0, 1, 2, 3, 5, 6, 7, 8];
    // var list = [3];

    var element = getRandomElement(list);
    print(element);

    return element;
  }

  int zeroIndex() {
    // var list = [1, 2, 3, 4, 5, 6, 7, 8];
    var list = [4];

    var zeroElement = getRandomElement(list);

    print("zeroElement --  $zeroElement");

    return zeroElement;
  }

  Future<void> computerTurn() {
    return Future.delayed(
      const Duration(seconds: 0),
      () {
        // debugPrint("com --->> ${data[i][j]}");
        debugPrint("com  before isMyTurn--->> $isMyTurn");

        fun(data);

        // if (data[0][0] == -1 && data[0][1] == -1 && data[0][2] == -1 && data[1][0] == -1 && data[1][2] == -1 && data[2][0] == -1 && data[2][1] == -1 && data[2][2] == -1) {
        //   var r = new Random();
        //
        //   if (data[0][0] == -1) {
        //     data[0][0] = 1;
        //   } else if (data[1][1] == 0 && data[2][0] == 0) {
        //     if (data[0][2] == -1) {
        //       debugPrint("----5555555--");
        //       data[0][2] = 1;
        //     }
        //   } else if (data[1][1] == 0 && data[1][2] == 0) {
        //     if (data[1][0] == -1) {
        //       data[1][0] = 1;
        //     }
        //   } else if (data[0][1] == 0 && data[0][2] == 0) {
        //     debugPrint("------");
        //
        //     // if (data[0][2] == -1) {
        //     //   debugPrint("----5555555--");
        //     //   data[0][2] = 1;
        //     // }
        //   }
        // }

        // if (data[1][1] == 0) {
        //   if (data[0][0] == -1) {
        //     data[0][0] = 1;
        //   } else if (data[1][1] == 0 && data[1][2] == 0) {
        //     if (data[1][0] == -1) {
        //       data[1][0] = 1;
        //     }
        //   } else if (data[1][1] == 0 && data[2][0] == 0) {
        //     if (data[0][2] == -1) {
        //       data[0][2] = 1;
        //     }
        //   }
        // }

        // for (int i = 0; i <= 2; i++) {
        //   for (int j = 0; j <= 2; j++) {
        //     // if (data[0][0] == -1 && data[0][1] == -1 && data[0][2] == -1 && data[1][0] == -1 && data[1][2] == -1 && data[2][0] == -1 && data[2][1] == -1 && data[2][2] == -1) {
        //     //   // var list = data[r.nextInt(data.length)];
        //     //
        //     //   // list = randomListItem(data);
        //     //   // debugPrint("list --->> $list");
        //     //   //
        //     //   // data[i][j] = r.nextInt(1);
        //     //
        //     //   // var list = [1, 2, 3, 4, 5, 6, 7];
        //     //   // var element = getRandomElement(data);
        //     //   // print(element);
        //     //
        //     //
        //     // }
        //
        //     // if (data[0][0] == -1 && data[0][1] == -1 && data[0][2] == -1 && data[1][0] == -1 && data[1][2] == -1 && data[2][0] == -1 && data[2][1] == -1 && data[2][2] == -1) {
        //     //   var element = getData();
        //     //   debugPrint("element --- >> $element");
        //     // }
        //
        //     // if (data[1][1] == 0) {
        //     //   if (data[0][0] == -1) {
        //     //     data[0][0] = 1;
        //     //   } else if (data[1][1] == 0 && data[1][2] == 0) {
        //     //     data[1][0] = 1;
        //     //   }
        //     // }
        //   }
        // }

        debugPrint("list---->>$data");
        var element = getData();
        debugPrint("element --- >> $element");

        // debugPrint("com  after isMyTurn--->> $isMyTurn");
        // debugPrint("after fun--->>>>>>>>>>>>>>> $isMyTurn");
        win();
      },
    );
  }

  void win() {
    if (data[0][0] == 1 && data[0][0] == data[0][1] && data[0][1] == data[0][2] || data[0][0] == 0 && data[0][0] == data[0][1] && data[0][1] == data[0][2]) {
      debugPrint("first column");
      debugPrint("winner --->> ${data[0][0]}");

      setState(() {
        show(data[0][0]);
        count(data[0][0]);
      });
    } else if (data[1][0] == 1 && data[1][0] == data[1][1] && data[1][1] == data[1][2] || data[1][0] == 0 && data[1][0] == data[1][1] && data[1][1] == data[1][2]) {
      debugPrint("second column");
      debugPrint("winner --->> ${data[1][0]}");
      show(data[1][0]);
      count(data[1][0]);
    } else if (data[2][0] == 1 && data[2][0] == data[2][1] && data[2][1] == data[2][2] || data[2][0] == 0 && data[2][0] == data[2][1] && data[2][1] == data[2][2]) {
      debugPrint("third column");
      debugPrint("winner --->> ${data[2][0]}");
      show(data[2][0]);
      count(data[2][0]);
    } else if (data[0][0] == 1 && data[0][0] == data[1][0] && data[1][0] == data[2][0] || data[0][0] == 0 && data[0][0] == data[1][0] && data[1][0] == data[2][0]) {
      debugPrint("first row");
      debugPrint("winner --->> ${data[0][0]}");
      show(data[0][0]);
      count(data[0][0]);
    } else if (data[0][1] == 1 && data[0][1] == data[1][1] && data[1][1] == data[2][1] || data[0][1] == 0 && data[0][1] == data[1][1] && data[1][1] == data[2][1]) {
      debugPrint("second row");
      debugPrint("winner --->> ${data[0][1]}");
      show(data[0][1]);
      count(data[0][1]);
    } else if (data[0][2] == 1 && data[0][2] == data[1][2] && data[1][2] == data[2][2] || data[0][2] == 0 && data[0][2] == data[1][2] && data[1][2] == data[2][2]) {
      debugPrint("third row");
      debugPrint("winner --->> ${data[0][2]}");
      show(data[0][2]);
      count(data[0][2]);
    } else if (data[0][0] == 1 && data[0][0] == data[1][1] && data[1][1] == data[2][2] || data[0][0] == 0 && data[0][0] == data[1][1] && data[1][1] == data[2][2]) {
      debugPrint("left cross");
      debugPrint("winner --->> ${data[1][1]}");
      show(data[0][0]);
      count(data[0][0]);
    } else if (data[2][0] == 1 && data[2][0] == data[1][1] && data[1][1] == data[0][2] || data[2][0] == 0 && data[2][0] == data[1][1] && data[1][1] == data[0][2]) {
      debugPrint(" right cross");
      debugPrint("winner --->> ${data[1][1]}");
      show(data[2][0]);
      count(data[2][0]);
    } else if (data[0][0] != -1 && data[1][0] != -1 && data[2][0] != -1 && data[0][1] != -1 && data[1][1] != -1 && data[2][1] != -1 && data[0][2] != -1 && data[1][2] != -1 && data[2][2] != -1) {
      draw();
    }
  }

  void show(var winner) {
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) {
        debugPrint("show- dialog--->>$winner");

        return AlertDialog(
          title: const Text(""),
          content: winner == 1 ? const Text("player X is winner") : const Text("player o is winner"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                reset();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFe6eef2),
              ),
              child: const Text(
                "start again",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void draw() {
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Draw"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                reset();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFe6eef2),
              ),
              child: const Text(
                "start again",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void startTimer() {
    timer = Timer.periodic(
        const Duration(
          seconds: 1,
        ), (timer) {
      setState(() {
        if (second > 0) {
          second--;
        } else {
          stopTimer();
        }
      });
    });
  }

  void stopTimer() {
    timer!.cancel();
    resetTimer();
  }

  void resetTimer() {
    second = maxSeconds;

    // debugPrint("second   ---->> $second");
  }

  Widget buildTimer() {
    final isRunning = timer == null ? false : timer!.isActive;

    return isRunning
        ? Container(
            width: 70,
            height: 70,
            // color: Colors.pink,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: 1 - second / maxSeconds,
                  strokeWidth: 5,
                  color: const Color(0XFFe6eef2),
                ),
                Center(
                  child: Text(
                    second.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )
        : ElevatedButton(
            onPressed: () {
              startTimer();
              reset();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0XFFe6eef2),
              ),
            ),
            child: const Text(
              "play again",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          );
  }

  extra() {
    // else if (data[0][0] == 0 || data[1][0] == 0 || data[2][0] == 0 || data[0][1] == 0 || data[2][1] == 0 || data[0][2] == 0 || data[1][2] == 0 || data[2][2] == 0) {
    //   var zeroIndexElement = zeroIndex();
    //   debugPrint("zeroIndexElement -- $zeroIndexElement");
    //
    //   if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {}
    // }

    // else if (data[0][0] == 0 || data[1][0] == 0 || data[2][0] == 0 || data[0][1] == 0 || data[2][1] == 0 || data[0][2] == 0 || data[1][2] == 0 || data[2][2] == 0) {
    //   if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 ||
    //       data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   }
    //
    //   /// index 1
    //   if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1 || data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 || data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0 || data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   }
    //
    //   /// index 2
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 1 || data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == -1 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   }
    //
    //   ///index 3
    //
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1 ||
    //       data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 || data[0][0] == 1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   }
    //
    //   ///index 5
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   }
    //
    //   ///index  6
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == -1) {
    //     data[2][2] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][0] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1 || data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == 1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 0 && data[2][2] == 1) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == -1 && data[2][2] == 0) {
    //     data[1][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[1][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0 || data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == 0 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 0 && data[1][2] == 1 && data[2][2] == 0) {
    //     data[0][0] = 1;
    //   }
    //
    //   ///index  7
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == -1) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][2] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == 0 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0 ||
    //       data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 0 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[2][0] = 1;
    //   } else if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == -1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[2][1] = 1;
    //   } else if (data[0][0] == 0 && data[1][0] == -1 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0 || data[0][0] == -1 && data[1][0] == 0 && data[2][0] == 0 && data[0][1] == -1 && data[1][1] == 1 && data[2][1] == 1 && data[0][2] == 1 && data[1][2] == 0 && data[2][2] == 0) {
    //     data[0][1] = 1;
    //   }
    //
    //   ///index 8
    //   if (data[0][0] == -1 && data[1][0] == -1 && data[2][0] == -1 && data[0][1] == -1 && data[1][1] == -1 && data[2][1] == -1 && data[0][2] == -1 && data[1][2] == -1 && data[2][2] == 0) {
    //     if (data[1][1] == -1) {
    //       data[1][1] = 1;
    //     }
    //   }
    // }

    // 1 -1 1
    // 0 1 0
    // -1 -1 0
    //
    // setState(() {
    //   isMyTurn = true;
    // });
  }
}
