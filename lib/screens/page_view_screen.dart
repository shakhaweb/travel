import 'package:flutter/material.dart';
import 'package:travel/screens/sign_up_screen.dart';
import '../utils/assets.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key,});

  @override
  State<PageViewScreen> createState() => PageViewScreenState();
}

class PageViewScreenState extends State<PageViewScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.tPhoto),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 240,
                    child: Text(
                      "Explorer the world",
                      style:
                      TextStyle(fontSize: 48, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Text(
                    "Let’s start here!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(duration:const Duration(milliseconds: 300), curve: Curves.linear);

                      },
                      style: ButtonStyle(
                        // Change button width and height
                        minimumSize:
                        MaterialStateProperty.all(const Size(72, 72)),
                        // Change button color
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xffFF5900)),
                        // Change button elevation
                        elevation: MaterialStateProperty.all(8),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                100.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Icon(Icons.arrow_forward)),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.tTwo),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 240,
                    child: Text(
                      "Explorer the world",
                      style:
                      TextStyle(fontSize: 48, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Text(
                    "Let’s start here!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration:const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      style: ButtonStyle(
                        // Change button width and height
                        minimumSize:
                        MaterialStateProperty.all(const Size(72, 72)),
                        // Change button color
                        backgroundColor: MaterialStateProperty.all(
                            const Color  (0xffFF24B24C)),
                        // Change button elevation
                        elevation: MaterialStateProperty.all(8),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                100.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      child: const Icon(Icons.arrow_forward)),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.tThree),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                    child: Text(
                      "Wellcome to Travel",
                      style:
                      TextStyle(fontSize: 48, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Text(
                    "Let’s start here!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                              const SignUpScreen()));
                    },
                    style: ButtonStyle(
                      minimumSize:
                      MaterialStateProperty.all(const Size(111, 72)),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xff1F41F4)),
                      elevation: MaterialStateProperty.all(8),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Start",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}