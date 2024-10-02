import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'budget_provider.dart';
import 'home_page.dart';

// Entry point aplikasi
void main() {
  runApp(MyApp()); // Jalankan aplikasi
}

// Aplikasi utama menggunakan ChangeNotifierProvider untuk menyediakan BudgetProvider
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BudgetProvider(), // Menginisialisasi BudgetProvider
      child: MaterialApp(
        title: 'Budget Manager', // Nama aplikasi
        home: HomePage(), // HomePage sebagai halaman awal aplikasi
      ),
    );
  }
}
