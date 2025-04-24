import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/routing/app_routes.dart';

class PayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MoneyApp",
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromRGBO(192, 2, 139, 1.0),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: IconButton(
              onPressed: () {
                context.go(AppRoutes.transactions);
              },
              icon: SvgPicture.asset('assets/icons/exit.svg'),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(192, 2, 139, 1.0),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 82),
            Text(
              "How much?",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white),
            ),
            SizedBox(
              height: 86,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: '£',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextSpan(
                    text: '100',
                    style: TextStyle(fontSize: 50),
                  ),
                  TextSpan(
                    text: '.00',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "1",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "2",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "3",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "4",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "5",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "6",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "7",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "8",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "9",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        ".",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "0",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Text(
                        "<",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
                padding: EdgeInsets.only(left: 80, right: 80, bottom: 34),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go(AppRoutes.payWho);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(247, 247, 247, 0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
