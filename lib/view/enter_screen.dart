import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toy_project/view/tic_tac_toy_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: Colors.pink,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/tic-tac-toe-with-friends.png",
                height: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 80,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TicTacToeScreen(
                            // name: controller.text,
                            ),
                      ),
                    );
                  },
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 150, right: 60, left: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: controller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "player Name",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
