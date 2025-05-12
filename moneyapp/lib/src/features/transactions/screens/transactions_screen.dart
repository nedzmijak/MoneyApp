import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/routing/app_routes.dart';

class TransactionsScreen extends StatelessWidget {
  final String amount;
  final String name;
  final String type;
  const TransactionsScreen(
      {super.key,
      required this.name,
      required this.amount,
      required this.type});
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
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                          child: SizedBox(
                        height: 100,
                        child: Text(
                          amount,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                      Positioned(
                        bottom: -45,
                        left: 20,
                        right: 20,
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildIconButton(
                                  icon: 'assets/icons/phone_icon.svg',
                                  label: 'Pay',
                                  onPressed: () => context.go(AppRoutes.pay),
                                ),
                                const SizedBox(width: 32),
                                _buildIconButton(
                                  icon: 'assets/icons/wallet_icon.svg',
                                  label: 'Top up',
                                  onPressed: () => context.go(AppRoutes.topup),
                                ),
                                const SizedBox(width: 32),
                                _buildIconButton(
                                  icon: 'assets/icons/wallete_icon_svg.svg',
                                  label: 'Loan',
                                  onPressed: () => context.go(AppRoutes.loan),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

// Pomocna metoda za kreiranje ikona

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
                              GestureDetector(
                                onTap: () {
                                  context.go(
                                      '${AppRoutes.transactionDetails}?type=$type',
                                      extra: {
                                        'amount': amount,
                                        'type': type,
                                        'name': name
                                      });
                                },
                                child: SvgPicture.asset(type == 'pay'
                                    ? 'assets/icons/payment_icon.svg'
                                    : 'assets/icons/topup_icon.svg'),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                name,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                amount,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 22,
                                ),
                              )
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

Widget _buildIconButton({
  required String icon,
  required String label,
  required VoidCallback onPressed,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(icon, width: 40, height: 40),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
