/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 70 (35 per locale)
///
/// Built on 2024-04-17 at 20:51 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';

export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ruRu(languageCode: 'ru', countryCode: 'RU', build: _StringsRuRu.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsAppEn app = _StringsAppEn._(_root);
	late final _StringsEquipmentEn equipment = _StringsEquipmentEn._(_root);
	late final _StringsTableEn table = _StringsTableEn._(_root);
	late final _StringsEnumsEn enums = _StringsEnumsEn._(_root);
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
}

// Path: app
class _StringsAppEn {
	_StringsAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Equipment maintenance';
}

// Path: equipment
class _StringsEquipmentEn {
	_StringsEquipmentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsEquipmentFieldsEn fields = _StringsEquipmentFieldsEn._(_root);
	late final _StringsEquipmentDetailsEn details = _StringsEquipmentDetailsEn._(_root);
}

// Path: table
class _StringsTableEn {
	_StringsTableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get detailsButton => 'More details';
	String get clearFilters => 'Clear filters';
	String get reloadDate => 'Update data from server';
}

// Path: enums
class _StringsEnumsEn {
	_StringsEnumsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsEnumsEquipmentStatusCodeEn equipmentStatusCode = _StringsEnumsEquipmentStatusCodeEn._(_root);
	late final _StringsEnumsCriticalityCodeEn criticalityCode = _StringsEnumsCriticalityCodeEn._(_root);
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get table => 'Table';
	String get list => 'Complex list';
}

// Path: equipment.fields
class _StringsEquipmentFieldsEn {
	_StringsEquipmentFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get id => 'ID';
	String get code => 'Code';
	String get name => 'Name';
	String get status => 'Status';
	String get criticality => 'Criticality';
	String get department => 'Department';
	String get hierarchyLevelType => 'Type of asset in the structure';
	String get costCode => 'Cost code';
	String get inventoryNumber => 'Inventory number';
	String get model => 'Model';
	String get commissDate => 'Commissioning date';
	String get initialValue => 'Initial cost';
	String get serialNumber => 'Serial number';
	String get installationDate => 'Installation date';
	String get ecology => 'Ecology';
	String get safety => 'Safety';
	String get dormantCauseName => 'Dormant cause';
	String get dormantStartDate => 'Dormant start date';
	String get dormantEndDate => 'Dormant end date';
}

// Path: equipment.details
class _StringsEquipmentDetailsEn {
	_StringsEquipmentDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get general => 'Total information';
	String get passport => 'Passport';
	String get operatingParameters => 'Operating parameters';
}

// Path: enums.equipmentStatusCode
class _StringsEnumsEquipmentStatusCodeEn {
	_StringsEnumsEquipmentStatusCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get installed => 'In operation';
	String get withdrawn => 'Out of service';
}

// Path: enums.criticalityCode
class _StringsEnumsCriticalityCodeEn {
	_StringsEnumsCriticalityCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get _1 => 'Very critical';
	String get _2 => 'Critical';
	String get _3 => 'Medium critical';
	String get _4 => 'Little critical';
	String get _5 => 'Not critical';
}

// Path: <root>
class _StringsRuRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRuRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ruRu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru-RU>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRuRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAppRuRu app = _StringsAppRuRu._(_root);
	@override late final _StringsEquipmentRuRu equipment = _StringsEquipmentRuRu._(_root);
	@override late final _StringsTableRuRu table = _StringsTableRuRu._(_root);
	@override late final _StringsEnumsRuRu enums = _StringsEnumsRuRu._(_root);
	@override late final _StringsHomeRuRu home = _StringsHomeRuRu._(_root);
}

// Path: app
class _StringsAppRuRu implements _StringsAppEn {
	_StringsAppRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Equipment maintenance';
}

// Path: equipment
class _StringsEquipmentRuRu implements _StringsEquipmentEn {
	_StringsEquipmentRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsEquipmentFieldsRuRu fields = _StringsEquipmentFieldsRuRu._(_root);
	@override late final _StringsEquipmentDetailsRuRu details = _StringsEquipmentDetailsRuRu._(_root);
}

// Path: table
class _StringsTableRuRu implements _StringsTableEn {
	_StringsTableRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get detailsButton => 'Подробнее';
	@override String get clearFilters => 'Очистить фильтры';
	@override String get reloadDate => 'Обновить данные с сервера';
}

// Path: enums
class _StringsEnumsRuRu implements _StringsEnumsEn {
	_StringsEnumsRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsEnumsEquipmentStatusCodeRuRu equipmentStatusCode = _StringsEnumsEquipmentStatusCodeRuRu._(_root);
	@override late final _StringsEnumsCriticalityCodeRuRu criticalityCode = _StringsEnumsCriticalityCodeRuRu._(_root);
}

// Path: home
class _StringsHomeRuRu implements _StringsHomeEn {
	_StringsHomeRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get table => 'Таблица';
	@override String get list => 'Комплексный список';
}

// Path: equipment.fields
class _StringsEquipmentFieldsRuRu implements _StringsEquipmentFieldsEn {
	_StringsEquipmentFieldsRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID';
	@override String get code => 'Код';
	@override String get name => 'Наименование';
	@override String get status => 'Статус';
	@override String get criticality => 'Критичность';
	@override String get department => 'Отдел';
	@override String get hierarchyLevelType => 'Тип актива в структуре';
	@override String get costCode => 'Код затрат';
	@override String get inventoryNumber => 'Инвентарный номер';
	@override String get model => 'Модель';
	@override String get commissDate => 'Дата ввода в эксплуатацию';
	@override String get initialValue => 'Первичная стоимость';
	@override String get serialNumber => 'Серийный номер';
	@override String get installationDate => 'Дата установки';
	@override String get ecology => 'Экология';
	@override String get safety => 'Безопасность';
	@override String get dormantCauseName => 'Причина остановки';
	@override String get dormantStartDate => 'Начало неактивности';
	@override String get dormantEndDate => 'Окончание неактивности';
}

// Path: equipment.details
class _StringsEquipmentDetailsRuRu implements _StringsEquipmentDetailsEn {
	_StringsEquipmentDetailsRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get general => 'Общие данные';
	@override String get passport => 'Паспорт';
	@override String get operatingParameters => 'Параметры эксплуатации';
}

// Path: enums.equipmentStatusCode
class _StringsEnumsEquipmentStatusCodeRuRu implements _StringsEnumsEquipmentStatusCodeEn {
	_StringsEnumsEquipmentStatusCodeRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get installed => 'В эксплуатации';
	@override String get withdrawn => 'Выведено из эксплуатации';
}

// Path: enums.criticalityCode
class _StringsEnumsCriticalityCodeRuRu implements _StringsEnumsCriticalityCodeEn {
	_StringsEnumsCriticalityCodeRuRu._(this._root);

	@override final _StringsRuRu _root; // ignore: unused_field

	// Translations
	@override String get _1 => 'Очень критично';
	@override String get _2 => 'Критично';
	@override String get _3 => 'Средне критично';
	@override String get _4 => 'Мало критично';
	@override String get _5 => 'Не критично';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Equipment maintenance';
			case 'equipment.fields.id': return 'ID';
			case 'equipment.fields.code': return 'Code';
			case 'equipment.fields.name': return 'Name';
			case 'equipment.fields.status': return 'Status';
			case 'equipment.fields.criticality': return 'Criticality';
			case 'equipment.fields.department': return 'Department';
			case 'equipment.fields.hierarchyLevelType': return 'Type of asset in the structure';
			case 'equipment.fields.costCode': return 'Cost code';
			case 'equipment.fields.inventoryNumber': return 'Inventory number';
			case 'equipment.fields.model': return 'Model';
			case 'equipment.fields.commissDate': return 'Commissioning date';
			case 'equipment.fields.initialValue': return 'Initial cost';
			case 'equipment.fields.serialNumber': return 'Serial number';
			case 'equipment.fields.installationDate': return 'Installation date';
			case 'equipment.fields.ecology': return 'Ecology';
			case 'equipment.fields.safety': return 'Safety';
			case 'equipment.fields.dormantCauseName': return 'Dormant cause';
			case 'equipment.fields.dormantStartDate': return 'Dormant start date';
			case 'equipment.fields.dormantEndDate': return 'Dormant end date';
			case 'equipment.details.general': return 'Total information';
			case 'equipment.details.passport': return 'Passport';
			case 'equipment.details.operatingParameters': return 'Operating parameters';
			case 'table.detailsButton': return 'More details';
			case 'table.clearFilters': return 'Clear filters';
			case 'table.reloadDate': return 'Update data from server';
			case 'enums.equipmentStatusCode.installed': return 'In operation';
			case 'enums.equipmentStatusCode.withdrawn': return 'Out of service';
			case 'enums.criticalityCode._1': return 'Very critical';
			case 'enums.criticalityCode._2': return 'Critical';
			case 'enums.criticalityCode._3': return 'Medium critical';
			case 'enums.criticalityCode._4': return 'Little critical';
			case 'enums.criticalityCode._5': return 'Not critical';
			case 'home.table': return 'Table';
			case 'home.list': return 'Complex list';
			default: return null;
		}
	}
}

extension on _StringsRuRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Equipment maintenance';
			case 'equipment.fields.id': return 'ID';
			case 'equipment.fields.code': return 'Код';
			case 'equipment.fields.name': return 'Наименование';
			case 'equipment.fields.status': return 'Статус';
			case 'equipment.fields.criticality': return 'Критичность';
			case 'equipment.fields.department': return 'Отдел';
			case 'equipment.fields.hierarchyLevelType': return 'Тип актива в структуре';
			case 'equipment.fields.costCode': return 'Код затрат';
			case 'equipment.fields.inventoryNumber': return 'Инвентарный номер';
			case 'equipment.fields.model': return 'Модель';
			case 'equipment.fields.commissDate': return 'Дата ввода в эксплуатацию';
			case 'equipment.fields.initialValue': return 'Первичная стоимость';
			case 'equipment.fields.serialNumber': return 'Серийный номер';
			case 'equipment.fields.installationDate': return 'Дата установки';
			case 'equipment.fields.ecology': return 'Экология';
			case 'equipment.fields.safety': return 'Безопасность';
			case 'equipment.fields.dormantCauseName': return 'Причина остановки';
			case 'equipment.fields.dormantStartDate': return 'Начало неактивности';
			case 'equipment.fields.dormantEndDate': return 'Окончание неактивности';
			case 'equipment.details.general': return 'Общие данные';
			case 'equipment.details.passport': return 'Паспорт';
			case 'equipment.details.operatingParameters': return 'Параметры эксплуатации';
			case 'table.detailsButton': return 'Подробнее';
			case 'table.clearFilters': return 'Очистить фильтры';
			case 'table.reloadDate': return 'Обновить данные с сервера';
			case 'enums.equipmentStatusCode.installed': return 'В эксплуатации';
			case 'enums.equipmentStatusCode.withdrawn': return 'Выведено из эксплуатации';
			case 'enums.criticalityCode._1': return 'Очень критично';
			case 'enums.criticalityCode._2': return 'Критично';
			case 'enums.criticalityCode._3': return 'Средне критично';
			case 'enums.criticalityCode._4': return 'Мало критично';
			case 'enums.criticalityCode._5': return 'Не критично';
			case 'home.table': return 'Таблица';
			case 'home.list': return 'Комплексный список';
			default: return null;
		}
	}
}
