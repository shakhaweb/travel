import 'package:flutter/material.dart';
import 'package:travel/screens/fully_sign_in.dart';
import 'package:travel/widgets/select_widget.dart';

class ChooseSignInScreen extends StatefulWidget {
  const ChooseSignInScreen({super.key});

  @override
  State<ChooseSignInScreen> createState() => _ChooseSignInScreenState();
}

class _ChooseSignInScreenState extends State<ChooseSignInScreen> {
  int currentIndex = 1;
  changeSelection(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Container(
            margin:const EdgeInsets.only(left: 30),
            child: const Text(
              "Choose your",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin:const EdgeInsets.only(left: 30),
            child: const Text(
              "Sign in",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: const Text(
              "Select login method",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const  SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: ()=>setState(() {
              currentIndex = 1;
            }),
            child: SelectWidget(isActive: currentIndex==1? true: false,),
          ),
          const  SizedBox(
            height : 20,
          ),
          GestureDetector(
            onTap: ()=>setState(() {
              currentIndex = 2;
            }),
            child: SelectWidget(isActive: currentIndex==2? true: false,),
          ),
          const   SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: ()=>setState(() {
              currentIndex = 3;
            }),
            child: SelectWidget(isActive: currentIndex==3? true: false,),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 40),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1F41F4),
                    minimumSize: const Size(200, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const FullySignInScreen()));
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}