import 'package:flutter/material.dart';

import 'app.dart';
import 'data/all_data.init.dart';
import 'i18n/strings.g.dart';

void main() {
  initializeMappers();
  WidgetsFlutterBinding.ensureInitialized();
  // LocaleSettings.useDeviceLocale();
  LocaleSettings.setLocale(AppLocale.en);
  // LocaleSettings.setLocale(AppLocale.ruRu);
  runApp(TranslationProvider(child: const App()));
}