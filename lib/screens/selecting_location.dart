import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/screens/screen_location.dart';
import 'package:travel/utils/assets.dart';

class SelectingLocationScreen extends StatefulWidget {
  const SelectingLocationScreen({super.key});

  @override
  State<SelectingLocationScreen> createState() => _SelectingLocationScreenState();
}

class _SelectingLocationScreenState extends State<SelectingLocationScreen> {
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
                    const   SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset(Assets.tBell),
                    const    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(Assets.tNumb),
                  ],
                ),
              ),
            ),
            const   SizedBox(
              height: 60,
            ),

            Column(
              children: [
                const   SizedBox(height: 40,),
                Image.asset(Assets.tFrame),
                const   Text("Search Around",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),),
                const  Text("The World",style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                ),),
                const    SizedBox(height: 40,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color(0xffE6E8EC),
                        minimumSize: const Size(65, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(100),
                        )),

                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (_) => const MyLocationScreen(title: "",), ));


                    }, child: const Text("Skip" , style: TextStyle(color: Colors.black),)),
                const  SizedBox(height: 20,),
                Image.asset(Assets.tFrameTwo),

              ],

            ),

            const     SizedBox(height: 40,),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SvgPicture.asset(Assets.tLocation),
                  height: 100,
                  width: 334,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff1F41F4)
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}