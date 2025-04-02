// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Skill _$SkillFromJson(Map<String, dynamic> json) => _Skill(
      name: json['name'] as String,
      level: (json['level'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$SkillToJson(_Skill instance) => <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'imageUrl': instance.imageUrl,
    };
