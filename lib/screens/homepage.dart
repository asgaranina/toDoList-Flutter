import 'package:flutter/material.dart';
import 'package:to_do_list/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0
          ),
          color: Colors.white38,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 32.0,
                    ),
                    child: Image(image: AssetImage(
                      'assets/images/logo.png'
                    )),
                  ),
                  TaskCardWidget(
                    title: "Get Started",
                    desc: "And do some stuff",
                  ),
                  TaskCardWidget(),
                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/images/add_icon.png'
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
