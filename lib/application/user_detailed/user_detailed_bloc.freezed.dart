// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detailed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailedEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailedEventCopyWith<UserDetailedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailedEventCopyWith<$Res> {
  factory $UserDetailedEventCopyWith(
          UserDetailedEvent value, $Res Function(UserDetailedEvent) then) =
      _$UserDetailedEventCopyWithImpl<$Res, UserDetailedEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$UserDetailedEventCopyWithImpl<$Res, $Val extends UserDetailedEvent>
    implements $UserDetailedEventCopyWith<$Res> {
  _$UserDetailedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res>
    implements $UserDetailedEventCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$UserDetailedEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetImpl implements Get {
  const _$GetImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'UserDetailedEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      __$$GetImplCopyWithImpl<_$GetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements UserDetailedEvent {
  const factory Get(final int id) = _$GetImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$GetImplCopyWith<_$GetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) loadedSuccess,
    required TResult Function(String error) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? loadedSuccess,
    TResult? Function(String error)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? loadedSuccess,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedFailed value) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedFailed value)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailedStateCopyWith<$Res> {
  factory $UserDetailedStateCopyWith(
          UserDetailedState value, $Res Function(UserDetailedState) then) =
      _$UserDetailedStateCopyWithImpl<$Res, UserDetailedState>;
}

/// @nodoc
class _$UserDetailedStateCopyWithImpl<$Res, $Val extends UserDetailedState>
    implements $UserDetailedStateCopyWith<$Res> {
  _$UserDetailedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserDetailedStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserDetailedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) loadedSuccess,
    required TResult Function(String error) loadedFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? loadedSuccess,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? loadedSuccess,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedFailed value) loadedFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedFailed value)? loadedFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserDetailedState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedSuccessImplCopyWith<$Res> {
  factory _$$LoadedSuccessImplCopyWith(
          _$LoadedSuccessImpl value, $Res Function(_$LoadedSuccessImpl) then) =
      __$$LoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoadedSuccessImplCopyWithImpl<$Res>
    extends _$UserDetailedStateCopyWithImpl<$Res, _$LoadedSuccessImpl>
    implements _$$LoadedSuccessImplCopyWith<$Res> {
  __$$LoadedSuccessImplCopyWithImpl(
      _$LoadedSuccessImpl _value, $Res Function(_$LoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoadedSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoadedSuccessImpl implements LoadedSuccess {
  const _$LoadedSuccessImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserDetailedState.loadedSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSuccessImplCopyWith<_$LoadedSuccessImpl> get copyWith =>
      __$$LoadedSuccessImplCopyWithImpl<_$LoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) loadedSuccess,
    required TResult Function(String error) loadedFailed,
  }) {
    return loadedSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? loadedSuccess,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loadedSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? loadedSuccess,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedFailed value) loadedFailed,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedFailed value)? loadedFailed,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccess implements UserDetailedState {
  const factory LoadedSuccess(final User user) = _$LoadedSuccessImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoadedSuccessImplCopyWith<_$LoadedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFailedImplCopyWith<$Res> {
  factory _$$LoadedFailedImplCopyWith(
          _$LoadedFailedImpl value, $Res Function(_$LoadedFailedImpl) then) =
      __$$LoadedFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadedFailedImplCopyWithImpl<$Res>
    extends _$UserDetailedStateCopyWithImpl<$Res, _$LoadedFailedImpl>
    implements _$$LoadedFailedImplCopyWith<$Res> {
  __$$LoadedFailedImplCopyWithImpl(
      _$LoadedFailedImpl _value, $Res Function(_$LoadedFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadedFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedFailedImpl implements LoadedFailed {
  const _$LoadedFailedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UserDetailedState.loadedFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedFailedImplCopyWith<_$LoadedFailedImpl> get copyWith =>
      __$$LoadedFailedImplCopyWithImpl<_$LoadedFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) loadedSuccess,
    required TResult Function(String error) loadedFailed,
  }) {
    return loadedFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? loadedSuccess,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loadedFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? loadedSuccess,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedFailed value) loadedFailed,
  }) {
    return loadedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedFailed value)? loadedFailed,
  }) {
    return loadedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(this);
    }
    return orElse();
  }
}

abstract class LoadedFailed implements UserDetailedState {
  const factory LoadedFailed(final String error) = _$LoadedFailedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$LoadedFailedImplCopyWith<_$LoadedFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
