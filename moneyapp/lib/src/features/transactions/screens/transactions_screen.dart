import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/routing/app_routes.dart';

class TransactionsScreen extends StatelessWidget {
  final String textController;
  const TransactionsScreen({super.key, required this.textController});
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
                                    IconButton(
                                        onPressed: () {
                                          context.go(AppRoutes.pay);
                                        },
                                        icon: SvgPicture.asset(
                                          'assets/icons/phone_icon.svg',
                                          width: 40,
                                          height: 40,
                                        )),
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
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Recent activity",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color.fromRGBO(58, 59, 60, 1)),
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("TODAY",
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(176, 179, 184, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      height: 150,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  context.go(AppRoutes.transactionDetails);
                                },
                                icon: SvgPicture.asset(
                                    'assets/icons/payment_icon.svg'),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(textController),
                              Spacer(),
                              Text("amount")
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("YESTERDAY",
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(176, 179, 184, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      height: 150,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
