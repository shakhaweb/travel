import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/utils/assets.dart';

class SelectWidget extends StatelessWidget {
  final bool isActive;
  const SelectWidget({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(left: 30),
          width: 325,
          height: 104,
          decoration: BoxDecoration(
              border: isActive == true
                  ? Border.all(color: const Color(0xff1F41F4))
                  : null,
              borderRadius: BorderRadius.circular(1000),
              color: isActive == true
                  ? const Color(0xff3772FF).withOpacity(0.1)
                  : Color(0xffF4F5F6)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: isActive == true
                        ? const Color(0xff1f41f4)
                        : const Color(0xffE6E8EC)),
                child: Center(
                  child: SvgPicture.asset(Assets.tFacebookLogo),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff141416),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 56,
                width: 56,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isActive == true ? const Color(0xffb5c6f2) : null),
                child: Center(
                  child: Container(
                    height: 24,
                    width: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        //color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: isActive == true
                              ? const Color(0xff1F41F4)
                              : const Color(0xffB1B5C3),
                        )),
                    child: Center(
                      child: Container(
                        height: 12,
                        width: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isActive == true
                                ? const Color(0xff1F41F4)
                                : const Color(0xffF4F5F6)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
