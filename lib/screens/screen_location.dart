import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/utils/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyLocationScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyLocationScreen extends StatefulWidget {
  const MyLocationScreen({super.key, required this.title});

  final String title;

  @override
  State<MyLocationScreen> createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              height: 96,
              width: 358,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color(0xffE6E8EC),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.tMenu),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(Assets.tAvatar),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Samms',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset(Assets.tBell),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(Assets.tNumb),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: SvgPicture.asset(Assets.tAvatarTwo),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  children: [
                    Text(
                      "Post in",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "American",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Column(
                  children: [
                    SvgPicture.asset(Assets.tButton),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(

                child: Image.asset(Assets.tPost)),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 45),
              child: const Text("Lorem Ipsum is simply dummy text of the printing and "
                  "typesetting industry.",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 60,top: 10),
                      height: 40,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffDAFEE4)
                      ),
                      child: const Text("Save", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xff24B24C),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 45,top: 12),
                      height: 40,
                      width: 161,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffE6E8EC)
                      ),
                      child: const Text("Comment", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black,
                      ),),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: SvgPicture.asset(Assets.tAvatarTwo),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  children: [
                    Text(
                      "Post in",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "American",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Column(
                  children: [
                    SvgPicture.asset(Assets.tButton),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 334,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff1F41F4)
                  ),
                  child: SvgPicture.asset(Assets.tLocation),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
