// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState()';
  }
}

/// @nodoc
class $PortfolioStateCopyWith<$Res> {
  $PortfolioStateCopyWith(PortfolioState _, $Res Function(PortfolioState) __);
}

/// @nodoc

class PortfolioInitial implements PortfolioState {
  const PortfolioInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState.initial()';
  }
}

/// @nodoc

class PortfolioLoading implements PortfolioState {
  const PortfolioLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState.loading()';
  }
}

/// @nodoc

class PortfolioLoaded implements PortfolioState {
  const PortfolioLoaded(
      {required final List<Experience> experiences,
      required final List<Project> projects,
      required final List<Skill> skills,
      required this.bio})
      : _experiences = experiences,
        _projects = projects,
        _skills = skills;

  final List<Experience> _experiences;
  List<Experience> get experiences {
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiences);
  }

  final List<Project> _projects;
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<Skill> _skills;
  List<Skill> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final String bio;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioLoadedCopyWith<PortfolioLoaded> get copyWith =>
      _$PortfolioLoadedCopyWithImpl<PortfolioLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioLoaded &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_experiences),
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_skills),
      bio);

  @override
  String toString() {
    return 'PortfolioState.loaded(experiences: $experiences, projects: $projects, skills: $skills, bio: $bio)';
  }
}

/// @nodoc
abstract mixin class $PortfolioLoadedCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioLoadedCopyWith(
          PortfolioLoaded value, $Res Function(PortfolioLoaded) _then) =
      _$PortfolioLoadedCopyWithImpl;
  @useResult
  $Res call(
      {List<Experience> experiences,
      List<Project> projects,
      List<Skill> skills,
      String bio});
}

/// @nodoc
class _$PortfolioLoadedCopyWithImpl<$Res>
    implements $PortfolioLoadedCopyWith<$Res> {
  _$PortfolioLoadedCopyWithImpl(this._self, this._then);

  final PortfolioLoaded _self;
  final $Res Function(PortfolioLoaded) _then;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? experiences = null,
    Object? projects = null,
    Object? skills = null,
    Object? bio = null,
  }) {
    return _then(PortfolioLoaded(
      experiences: null == experiences
          ? _self._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<Experience>,
      projects: null == projects
          ? _self._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PortfolioError implements PortfolioState {
  const PortfolioError({required this.message, required this.error});

  final String message;
  final bool error;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioErrorCopyWith<PortfolioError> get copyWith =>
      _$PortfolioErrorCopyWithImpl<PortfolioError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  @override
  String toString() {
    return 'PortfolioState.error(message: $message, error: $error)';
  }
}

/// @nodoc
abstract mixin class $PortfolioErrorCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioErrorCopyWith(
          PortfolioError value, $Res Function(PortfolioError) _then) =
      _$PortfolioErrorCopyWithImpl;
  @useResult
  $Res call({String message, bool error});
}

/// @nodoc
class _$PortfolioErrorCopyWithImpl<$Res>
    implements $PortfolioErrorCopyWith<$Res> {
  _$PortfolioErrorCopyWithImpl(this._self, this._then);

  final PortfolioError _self;
  final $Res Function(PortfolioError) _then;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? error = null,
  }) {
    return _then(PortfolioError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
