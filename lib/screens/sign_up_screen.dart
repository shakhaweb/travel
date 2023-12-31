import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/choose_sign_in.dart';
import 'package:travel/utils/assets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController controllerEmail = TextEditingController();
  late final TextEditingController controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(

          child: Form(
            key: formKey,

            child: Column(

              children: [
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 60,
                      child: Image.asset(Assets.tLogo),
                    ),
                    Text("travee",
                        style: GoogleFonts.oleoScriptSwashCaps(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(height: 100),
                Text("Welcome!",
                    style: GoogleFonts.albertSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 10),
                const Text("Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    )),
                const SizedBox(height: 10),
                const Text("Please fill your information",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 50),
                Container(
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
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1F41F4),
                        minimumSize: const Size(200, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ChooseSignInScreen()));
                      }
                    },
                    child: const Text(
                      "Sign in now",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFFFFF),
                        minimumSize: const Size(200, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    onPressed: () {

                    },
                    child: const Text(
                      "Sign up ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}