import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assets.dart';

class Dialogs {
  static Future<void> showAlertDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:[
                    Container(
                      padding: const EdgeInsets.only(left: 240,),
                      child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.backspace, color: Colors.grey,),
                  ),
                    ),
                ]),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("hello world")),
                Image.asset(Assets.tVerify),
                Text("Verify email",style: GoogleFonts.albertSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),),
              const  SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Please enter the 4 digit code sent to yourmail@example.com",style: GoogleFonts.notoSansMedefaidrin(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
               const SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1F41F4),
                          minimumSize: const Size(326, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                      onPressed: () {

                      },
                      child: const Text(
                        "Open email",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
