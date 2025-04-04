///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String get name => 'Juan Arismendy';
	@override late final _TranslationsHomePageEs home_page = _TranslationsHomePageEs._(_root);
}

// Path: home_page
class _TranslationsHomePageEs implements TranslationsHomePageEn {
	_TranslationsHomePageEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get about => 'Sobre de';
	@override String get services => 'Servicios';
	@override String get resume => 'CV';
	@override String get skills => 'Habilidades';
	@override String get projects => 'Proyectos';
	@override String get contact => 'Contacto';
	@override String get blog => 'Blog';
	@override String get portfolio => 'Portafolio';
	@override String get hire_me => 'Contrátame';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'name': return 'Juan Arismendy';
			case 'home_page.home': return 'Inicio';
			case 'home_page.about': return 'Sobre de';
			case 'home_page.services': return 'Servicios';
			case 'home_page.resume': return 'CV';
			case 'home_page.skills': return 'Habilidades';
			case 'home_page.projects': return 'Proyectos';
			case 'home_page.contact': return 'Contacto';
			case 'home_page.blog': return 'Blog';
			case 'home_page.portfolio': return 'Portafolio';
			case 'home_page.hire_me': return 'Contrátame';
			default: return null;
		}
	}
}

