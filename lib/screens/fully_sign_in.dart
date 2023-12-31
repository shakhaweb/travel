import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/selecting_region.dart';
import 'package:travel/utils/assets.dart';

class FullySignInScreen extends StatefulWidget {
  const FullySignInScreen({super.key});

  @override
  State<FullySignInScreen> createState() => _FullySignInScreenState();
}

class _FullySignInScreenState extends State<FullySignInScreen> {
  late final TextEditingController controllerEmail = TextEditingController();
  late final TextEditingController controllerPassword = TextEditingController();
  late final TextEditingController controllerFName = TextEditingController();
  late final TextEditingController controllerLName = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Text("Welcome!",
                      style: GoogleFonts.albertSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: const Text("Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: const Text("Please fill your information",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  height: 100,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffE6E8EC),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: controllerEmail,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter Email";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Email",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              border: InputBorder.none),
                        ),
                      ),
                      const Icon(
                        Icons.email_outlined,
                        size: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  height: 100,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffE6E8EC),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: controllerPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter password";
                            }
                            if (value.length < 8) {
                              return "at least 8";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                              labelText: "Password",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              border: InputBorder.none),
                        ),
                      ),
                      const Icon(
                        Icons.lock_outline,
                        size: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  height: 100,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffE6E8EC),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: controllerFName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your first name";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              labelText: "First Name",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              border: InputBorder.none),
                        ),
                      ),
                      const Icon(
                        Icons.account_circle_outlined,
                        size: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  height: 100,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffE6E8EC),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: controllerLName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your last name";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Last Name",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              border: InputBorder.none),
                        ),
                      ),
                      const Icon(
                        Icons.account_circle_outlined,
                        size: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1F41F4),
                          minimumSize: const Size(200, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(left: 300,top: 10),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Icon(
                                              Icons.backspace,
                                              color: Colors.grey,
                                            )),
                                      ),
                                      const   SizedBox(height: 40,),
                                      Image.asset(Assets.tAccVerify),
                                      Text(
                                        "Successfully",
                                        style: GoogleFonts.notoSansGeorgian(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 32,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "Yahoo! You have successfully verified the account.",
                                        style: GoogleFonts.notoSansGeorgian(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                const Color(0xff24B24C),
                                                minimumSize: const Size(326, 56),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(100),
                                                )),
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (_)=> const SelectingRegionScreen() ));
                                            },
                                            child: const Text(
                                              "Done",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      // Добавьте другие элементы, как требуется
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}