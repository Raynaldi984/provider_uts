import 'package:flutter/foundation.dart';
import 'budget.dart';

// Provider untuk mengelola state dari daftar transaksi Budget
class BudgetProvider with ChangeNotifier {
  // List untuk menyimpan daftar transaksi
  List<Budget> _budgets = [];

  // Getter untuk mengambil list transaksi dari _budgets
  List<Budget> get budgets => _budgets;

  // Method untuk menambah transaksi ke list _budgets
  void addBudget(Budget budget) {
    _budgets.add(budget); // Tambahkan transaksi baru ke list
    notifyListeners(); // Memberitahu UI bahwa ada perubahan data
  }

  // Getter untuk menghitung total pemasukan
  double get totalIncome =>
      _budgets.where((b) => !b.isExpense).fold(0.0, (sum, b) => sum + b.amount);

  // Getter untuk menghitung total pengeluaran
  double get totalExpenses =>
      _budgets.where((b) => b.isExpense).fold(0.0, (sum, b) => sum + b.amount);

  // Getter untuk menghitung saldo total (total pemasukan dikurangi pengeluaran)
  double get total => totalIncome - totalExpenses;
}
