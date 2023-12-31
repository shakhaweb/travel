import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/selecting_location.dart';
import '../utils/assets.dart';

class SelectingRegionScreen extends StatefulWidget {
  const SelectingRegionScreen({super.key});

  @override
  State<SelectingRegionScreen> createState() => _SelectingRegionScreenState();
}

class _SelectingRegionScreenState extends State<SelectingRegionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Select ",
                style: GoogleFonts.albertSans(
                    fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Text(
              "Region",
              style: GoogleFonts.inclusiveSans(
                  fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.arrow_forward),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff1F41F4),
                      minimumSize: const Size(90, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      )),
                  onPressed: () {},
                  child: const Text(
                    "Asia",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            Stack(
              children: [
                Positioned(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(Assets.tGlobus,fit: BoxFit.cover,) ),
                ),
                Positioned(
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1F41F4),
                            minimumSize: const Size(200, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SelectingLocationScreen()));
                        },
                        child: const Text(
                          "Select now",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white),
                        )),
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 90,
                    child: TextButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 56),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Later",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff141416)),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}