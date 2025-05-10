import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moneyapp/src/features/loan/screens/loan_screen.dart';
import 'package:moneyapp/src/features/pay/bloc/amount_cubit.dart';
import 'package:moneyapp/src/features/pay/screens/pay_screen.dart';
import 'package:moneyapp/src/features/pay/screens/pay_who_screen.dart';
import 'package:moneyapp/src/features/transaction_details/screens/transaction_details_screen.dart';
import 'package:moneyapp/src/features/transactions/screens/transactions_screen.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.transactions,
  routes: [
    GoRoute(
      path: AppRoutes.transactions,
      builder: (context, state) {
        final textController = state.extra as String? ?? '';
        return TransactionsScreen(textController: textController);
      },
    ),
    GoRoute(
      path: AppRoutes.pay,
      builder: (context, state) => BlocProvider(
        create: (context) => AmountCubit(),
        child: PayScreen(),
      ),
    ),
    GoRoute(
        path: AppRoutes.payWho, builder: (context, state) => PayWhoScreen()),
    GoRoute(
        path: AppRoutes.transactionDetails,
        builder: (context, state) => TransactionDetailsScreen()),
    GoRoute(path: AppRoutes.loan, builder: (context, state) => LoanScreen()),
  ],
);
