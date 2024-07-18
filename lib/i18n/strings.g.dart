/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 41
///
/// Built on 2024-07-18 at 20:30 UTC

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
	en(languageCode: 'en', build: Translations.build);

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
	String get common_actions => 'Azioni';
	String get common_add => 'Aggiungi';
	String get common_back => 'Indietro';
	String get common_cancel => 'Annulla';
	String get common_send => 'Invia';
	String get common_change => 'Modifica';
	String get common_close => 'Chiudi';
	String get common_confirm => 'Conferma';
	String get common_date => 'Data';
	String get common_delete => 'Cancella';
	String get common_deleting => 'Rimozione in corso';
	String get common_fetching_data => 'Recupero informazioni in corso';
	String get common_loading => 'Caricamento in corso';
	String get common_next => 'Avanti';
	String get common_no => 'No';
	String get common_ok => 'Ok';
	String get common_save => 'Salva';
	String get common_search => 'Cerca';
	String get common_textfield_empty => 'Il campo non può essere vuoto';
	String get common_warning => 'Attenzione';
	String get common_yes => 'Sì';
	String get document_dialog_file => 'File';
	String get document_dialog_image => 'Immagine';
	String get document_dialog_message => 'Invio dati in corso';
	String get error_redirect_title => 'Sessione scaduta';
	String get common_response_message_bad_request => 'Richiesta non corretta.';
	String get common_response_message_internal_server_error => 'Qualcosa è andato storto. Si prega di riprovare più tardi.';
	String get common_response_message_timeout => 'Errore di time-out. Si prega di riprovare più tardi.';
	String get common_response_message_no_internet => 'Nessuna connessione internet rilevata. Si prega di riprovare più tardi.';
	String get common_response_message_default => 'Errore sconosciuto. Si prega di riprovare più tardi.';
	String get tech_support_add_images => 'Aggiungi immagini ';
	String get tech_support_max_5 => '(massimo 5)';
	String get tech_support_select_domain => 'Seleziona un dominio';
	String get tech_support_select_section_or_argument => 'Seleziona una sezione o argomento';
	String get tech_support_main_label => 'Ciao, come possiamo aiutarti?';
	String get common_tech_support => 'Supporto tecnico';
	String get common_submit_your_opinion => 'Dicci cosa ne pensi';
	String get common_signal_error => 'Segnala un errore';
	String get common_ask_your_question => 'Formula la tua domanda';
	String get tech_support_confirm_title => 'La tua domanda è stata inviata con successo';
	String get common_lorem_ipsum => 'lorem ipsum';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common_actions': return 'Azioni';
			case 'common_add': return 'Aggiungi';
			case 'common_back': return 'Indietro';
			case 'common_cancel': return 'Annulla';
			case 'common_send': return 'Invia';
			case 'common_change': return 'Modifica';
			case 'common_close': return 'Chiudi';
			case 'common_confirm': return 'Conferma';
			case 'common_date': return 'Data';
			case 'common_delete': return 'Cancella';
			case 'common_deleting': return 'Rimozione in corso';
			case 'common_fetching_data': return 'Recupero informazioni in corso';
			case 'common_loading': return 'Caricamento in corso';
			case 'common_next': return 'Avanti';
			case 'common_no': return 'No';
			case 'common_ok': return 'Ok';
			case 'common_save': return 'Salva';
			case 'common_search': return 'Cerca';
			case 'common_textfield_empty': return 'Il campo non può essere vuoto';
			case 'common_warning': return 'Attenzione';
			case 'common_yes': return 'Sì';
			case 'document_dialog_file': return 'File';
			case 'document_dialog_image': return 'Immagine';
			case 'document_dialog_message': return 'Invio dati in corso';
			case 'error_redirect_title': return 'Sessione scaduta';
			case 'common_response_message_bad_request': return 'Richiesta non corretta.';
			case 'common_response_message_internal_server_error': return 'Qualcosa è andato storto. Si prega di riprovare più tardi.';
			case 'common_response_message_timeout': return 'Errore di time-out. Si prega di riprovare più tardi.';
			case 'common_response_message_no_internet': return 'Nessuna connessione internet rilevata. Si prega di riprovare più tardi.';
			case 'common_response_message_default': return 'Errore sconosciuto. Si prega di riprovare più tardi.';
			case 'tech_support_add_images': return 'Aggiungi immagini ';
			case 'tech_support_max_5': return '(massimo 5)';
			case 'tech_support_select_domain': return 'Seleziona un dominio';
			case 'tech_support_select_section_or_argument': return 'Seleziona una sezione o argomento';
			case 'tech_support_main_label': return 'Ciao, come possiamo aiutarti?';
			case 'common_tech_support': return 'Supporto tecnico';
			case 'common_submit_your_opinion': return 'Dicci cosa ne pensi';
			case 'common_signal_error': return 'Segnala un errore';
			case 'common_ask_your_question': return 'Formula la tua domanda';
			case 'tech_support_confirm_title': return 'La tua domanda è stata inviata con successo';
			case 'common_lorem_ipsum': return 'lorem ipsum';
			default: return null;
		}
	}
}
