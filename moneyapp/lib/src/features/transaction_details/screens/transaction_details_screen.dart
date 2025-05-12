import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/routing/app_routes.dart';
import 'package:intl/intl.dart';

class TransactionDetailsScreen extends StatelessWidget {
  final String amount;
  final String type;
  final String name;
  const TransactionDetailsScreen(
      {required this.amount, required this.type, required this.name});
  @override
  Widget build(BuildContext context) {
    bool isRepeating = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go(AppRoutes.transactions,
                extra: {amount: "", name: "", type: ""});
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
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 17),
              child: Row(
                children: [
                  SvgPicture.asset(
                    type == 'pay'
                        ? 'assets/icons/payment_icon.svg'
                        : 'assets/icons/topup_icon.svg',
                    width: 60,
                    height: 60,
                  ),
                  Spacer(),
                  Text(
                    amount,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 37,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, fontSize: 23),
                  ),
                  Text(
                      DateFormat('dd MMMM yyyy hh:mm a').format(DateTime.now()),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: Color.fromRGBO(176, 179, 184, 1))),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 24, top: 17, bottom: 17),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/receipt.svg',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Add receipt",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "SHARE THE COST",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(58, 59, 60, 1)),
              ),
            ),
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 24, top: 17, bottom: 17),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/split.svg',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Split this bill",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "SUBSCRIPTION",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(58, 59, 60, 1)),
              ),
            ),
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      "Repeating payment",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
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
              height: 50,
            ),
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 24, top: 14, bottom: 14, right: 25),
                child: Text(
                  "Something wrong? Get help",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.red),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Text(
                "Transaction ID #1223SD23RWDF2DFASeBay - Merchant ID #1245",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Color.fromRGBO(176, 179, 184, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
