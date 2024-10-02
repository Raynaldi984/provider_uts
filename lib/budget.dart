// Model untuk transaksi budget
class Budget {
  final String name; // Nama transaksi
  final double amount; // Jumlah uang dalam transaksi
  final bool
      isExpense; // Menentukan apakah transaksi ini pengeluaran (true) atau pemasukan (false)

  // Constructor dengan parameter name, amount, dan isExpense (default isExpense adalah false)
  Budget(this.name, this.amount, {this.isExpense = false});
}
