import 'package:go_router/go_router.dart';
import 'package:moneyapp/src/features/pay/screens/pay_screen.dart';
import 'package:moneyapp/src/features/pay/screens/pay_who_screen.dart';
import 'package:moneyapp/src/features/transactions/screens/transactions_screen.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.transactions,
  routes: [
    GoRoute(
      path: AppRoutes.transactions,
      builder: (context, state) => TransactionsScreen(),
    ),
    GoRoute(
      path: AppRoutes.pay,
      builder: (context, state) => PayScreen(),
    ),
    GoRoute(
        path: AppRoutes.payWho, builder: (context, state) => PayWhoScreen()),
  ],
);
