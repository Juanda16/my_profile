///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final translate = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	String get name => 'Juan Arismendy';
	late final TranslationsHomePageEn home_page = TranslationsHomePageEn._(_root);
}

// Path: home_page
class TranslationsHomePageEn {
	TranslationsHomePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get about => 'About';
	String get services => 'Services';
	String get resume => 'Resume';
	String get skills => 'Skills';
	String get projects => 'Projects';
	String get contact => 'Contact';
	String get blog => 'Blog';
	String get portfolio => 'Portfolio';
	String get hire_me => 'Hire Me';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'name': return 'Juan Arismendy';
			case 'home_page.home': return 'Home';
			case 'home_page.about': return 'About';
			case 'home_page.services': return 'Services';
			case 'home_page.resume': return 'Resume';
			case 'home_page.skills': return 'Skills';
			case 'home_page.projects': return 'Projects';
			case 'home_page.contact': return 'Contact';
			case 'home_page.blog': return 'Blog';
			case 'home_page.portfolio': return 'Portfolio';
			case 'home_page.hire_me': return 'Hire Me';
			default: return null;
		}
	}
}

