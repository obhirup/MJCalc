import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/calculator_settings.dart';

class StorageService {
  static const String _keyCalculatorSettings = 'casio_calculator_settings';

  final SharedPreferences _prefs;

  StorageService(this._prefs);

  static Future<StorageService> init() async {
    final prefs = await SharedPreferences.getInstance();
    return StorageService(prefs);
  }

  // --- Calculator Settings ---
  CalculatorSettings loadCalculatorSettings() {
    final raw = _prefs.getString(_keyCalculatorSettings);
    if (raw == null || raw.isEmpty) {
      return const CalculatorSettings();
    }
    try {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      return CalculatorSettings.fromJson(map);
    } catch (_) {
      return const CalculatorSettings();
    }
  }

  Future<void> saveCalculatorSettings(CalculatorSettings settings) async {
    final raw = jsonEncode(settings.toJson());
    await _prefs.setString(_keyCalculatorSettings, raw);
  }
}
