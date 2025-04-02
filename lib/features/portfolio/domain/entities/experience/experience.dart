import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience.freezed.dart';
part 'experience.g.dart';

@freezed
abstract class Experience with _$Experience {
  const factory Experience({
    required String title,
    required String company,
    required String description,
    List<String>? technologies,
    String? imageUrl,
    DateTime? startDate,
    DateTime? endDate,
  }) = _Experience;

  const Experience._();

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}
