import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';

List<TransactionModel> drawerTransactionsList = [
  TransactionModel(
    leadingIcon: Assets.imagesDashboard,
    name: "Dashboard",
  ),
  TransactionModel(
    leadingIcon: Assets.imagesTransactions,
    name: "My Transactions",
  ),
  TransactionModel(
    leadingIcon: Assets.imagesStatistics,
    name: "Statistics",
  ),
  TransactionModel(
    leadingIcon: Assets.imagesWallet,
    name: "Wallet Account",
  ),
  TransactionModel(
    leadingIcon: Assets.imagesInvestments,
    name: "My Investments",
  ),
];
