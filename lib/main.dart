import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/storage_service.dart';
import 'providers/calculator_provider.dart';
import 'theme/claude_theme.dart';
import 'screens/calculator_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storageService = await StorageService.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalculatorProvider(storageService)),
      ],
      child: const CasioCalculatorApp(),
    ),
  );
}

class CasioCalculatorApp extends StatelessWidget {
  const CasioCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CalculatorProvider>();

    return MaterialApp(
      title: 'Casio Check & Correct',
      debugShowCheckedModeBanner: false,
      theme: ClaudeTheme.light(provider.activeColor),
      darkTheme: ClaudeTheme.dark(provider.activeColor),
      themeMode: provider.themeMode,
      home: const CalculatorScreen(),
    );
  }
}
