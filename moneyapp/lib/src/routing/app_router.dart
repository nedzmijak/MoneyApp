import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moneyapp/src/features/loan/screens/loan_screen.dart';
import 'package:moneyapp/src/features/pay/bloc/amount_cubit.dart';
import 'package:moneyapp/src/features/pay/screens/pay_screen.dart';
import 'package:moneyapp/src/features/pay/screens/pay_who_screen.dart';
import 'package:moneyapp/src/features/topup/screens/topup_screen.dart';
import 'package:moneyapp/src/features/transaction_details/screens/transaction_details_screen.dart';
import 'package:moneyapp/src/features/transactions/screens/transactions_screen.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.transactions,
  routes: [
    GoRoute(
      path: AppRoutes.transactions,
      builder: (context, state) {
        final String type = state.uri.queryParameters['type'] ?? 'pay';
        final data = state.extra as Map<String, String>? ?? {};
        final name = data['name'] ?? '';
        final amount = data['amount'] ?? '';
        return TransactionsScreen(
          name: name,
          amount: amount,
          type: type,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.pay,
      builder: (context, state) {
        final type = state.uri.queryParameters['type'] ?? 'pay';
        return BlocProvider(
          create: (context) => AmountCubit(),
          child: PayScreen(type: type),
        );
      },
    ),
    GoRoute(
      path: '/pay_who',
      name: AppRoutes.payWho,
      builder: (context, state) {
        final data = state.extra as Map<String, String>? ?? {};
        final amount = data['amount'] ?? '';
        final type = state.uri.queryParameters['type'] ?? 'pay';

        return PayWhoScreen(
          amount: amount,
          type: type,
        );
      },
    ),
    GoRoute(
        path: AppRoutes.transactionDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, String>? ?? {};
          final amount = data['amount'] ?? '';
          final type = state.uri.queryParameters['type'] ?? 'pay';
          final name = data['name'] ?? '';
          return TransactionDetailsScreen(
            amount: amount,
            type: type,
            name: name,
          );
        }),
    GoRoute(path: AppRoutes.loan, builder: (context, state) => LoanScreen()),
    GoRoute(
      path: AppRoutes.topup,
      builder: (context, state) {
        final type = state.uri.queryParameters['type'] ?? 'pay';
        return BlocProvider(
          create: (context) => AmountCubit(),
          child: TopupScreen(type: type),
        );
      },
    ),
  ],
);
