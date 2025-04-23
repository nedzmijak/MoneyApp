import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MoneyApp",
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        backgroundColor: const Color.fromRGBO(192, 2, 139, 1.0),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(228, 230, 235, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                    color: const Color.fromRGBO(192, 2, 139, 1.0),
                    width: double.infinity,
                    height: 200,
                    alignment: const Alignment(0, 2.0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 50, right: 50, top: 12, bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/phone_icon.svg',
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 8),
                                    Text("Pay",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                                SizedBox(width: 32),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/wallet_icon.svg',
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 8),
                                    Text("Top up",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                                SizedBox(width: 32),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/wallete_icon_svg.svg',
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 8),
                                    Text("Loan",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )),
                SizedBox(height: 70), // 30px space below purple container
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // 20px horizontal padding
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("First text",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 8),
                      Text("Second text",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
