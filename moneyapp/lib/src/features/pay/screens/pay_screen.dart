import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyapp/src/features/pay/bloc/amoun_state.dart';
import 'package:moneyapp/src/features/pay/bloc/amount_cubit.dart';
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
            children: [
              const SizedBox(height: 82),
              Text(
                "How much?",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(height: 86),
              BlocBuilder<AmountCubit, AmountState>(
                builder: (context, state) {
                  print("Current amount in UI: ${state.amount}");
                  String displayAmount = state.amount;

                  if (displayAmount.isEmpty) displayAmount = "0";

                  if (!displayAmount.contains(".")) {
                    displayAmount += ".00";
                  } else {
                    final parts = displayAmount.split(".");
                    if (parts[1].length < 2) {
                      displayAmount =
                          "${parts[0]}.${parts[1].padRight(2, '0')}";
                    }
                  }

                  final wholePart = displayAmount.split(".")[0];
                  final decimalPart = displayAmount.split(".")[1];

                  return RichText(
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        const TextSpan(
                            text: '£', style: TextStyle(fontSize: 20)),
                        TextSpan(
                            text: wholePart,
                            style: const TextStyle(fontSize: 50)),
                        TextSpan(
                            text: '.$decimalPart',
                            style: const TextStyle(fontSize: 20)),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 80),
              ..._buildNumberPad(context),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, bottom: 34),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go(AppRoutes.payWho);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(247, 247, 247, 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildNumberPad(BuildContext context) {
    final cubit = BlocProvider.of<AmountCubit>(context);
    final buttons = [
      ["1", "2", "3"],
      ["4", "5", "6"],
      ["7", "8", "9"],
      [".", "0", "<"],
    ];

    return buttons.map((row) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: row.map((text) {
            return SizedBox(
              width: 60,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  if (text == "<") {
                    cubit.deleteDigit();
                  } else {
                    cubit.addDigit(text);
                  }
                },
                child: Text(
                  text,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      );
    }).toList();
  }
}
