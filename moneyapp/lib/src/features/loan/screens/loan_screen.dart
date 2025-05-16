import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/routing/app_routes.dart';

class LoanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRepeating = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.push(AppRoutes.transactions);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
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
      ),
      backgroundColor: const Color.fromARGB(255, 242, 246, 251),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms and Conditions",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, fontSize: 23),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum enim non neque luctus, nec blandit ipsum sagittis. Sed fringilla blandit nibh, sit amet suscipit massa sollicitudin lacinia. Donec cursus, odio sit amet tincidunt sodales, odio nisl hendrerit sem, tempor tincidunt ligula nisl nec ante. Nulla aliquet aliquam justo, ac bibendum orci rhoncus non. Nullam quis ex elementum, pharetra ligula eleifend, convallis nulla. Nulla sit amet nisi viverra, semper nunc eu, posuere dui. Donec at metus ut eros rhoncus vestibulum vitae at lacus. Etiam imperdiet, nulla ac condimentum aliquam, enim lacus fringilla leo, vel hendrerit mi ipsum et ante. Vivamus finibus mauris eget diam sodales, eget efficitur orci laoreet. Sed feugiat odio quis mattis tristique. Mauris sit amet sem mauris.",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color.fromRGBO(58, 59, 60, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 14),
                child: Row(
                  children: [
                    Text(
                      "Accept Terms & Conditions",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    Spacer(),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Switch(
                          value: isRepeating,
                          onChanged: (value) {
                            setState(() {
                              isRepeating = value;
                            });
                          },
                          activeColor: const Color.fromRGBO(192, 2, 139, 1.0),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Text(
                "ABOUT YOU",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(58, 59, 60, 1)),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monthly Salary",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(158, 158, 158, 1)),
                    ),
                    Text(
                      "£ 1001",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(62, 61, 61, 1)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Monthly Expenses",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(158, 158, 158, 1)),
                    ),
                    Text("£ 250",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(62, 61, 61, 1))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Text(
                "LOAN",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(58, 59, 60, 1)),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(158, 158, 158, 1)),
                    ),
                    Text(
                      "£ 10 000",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(62, 61, 61, 1)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Term",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(158, 158, 158, 1)),
                    ),
                    Text("48",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(62, 61, 61, 1))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 110, top: 180),
              child: SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                              title: Text(
                                "Yeeeyy!! Congrats. Your application has been approved. Don't tell your friends you have money!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(8),
                                    right: Radius.circular(8)),
                              ));
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(192, 2, 139, 1),
                    ),
                    child: Text(
                      "Apply for loan",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
