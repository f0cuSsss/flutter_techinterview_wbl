// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoginPressed,
    required TResult Function(String login) loginFieldChanged,
    required TResult Function(String password) passwordFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoginPressed,
    TResult? Function(String login)? loginFieldChanged,
    TResult? Function(String password)? passwordFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoginPressed,
    TResult Function(String login)? loginFieldChanged,
    TResult Function(String password)? passwordFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginPressed value) onLoginPressed,
    required TResult Function(LoginFieldChanged value) loginFieldChanged,
    required TResult Function(PasswordFieldChanged value) passwordFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginPressed value)? onLoginPressed,
    TResult? Function(LoginFieldChanged value)? loginFieldChanged,
    TResult? Function(PasswordFieldChanged value)? passwordFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginPressed value)? onLoginPressed,
    TResult Function(LoginFieldChanged value)? loginFieldChanged,
    TResult Function(PasswordFieldChanged value)? passwordFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoginPressedImplCopyWith<$Res> {
  factory _$$OnLoginPressedImplCopyWith(_$OnLoginPressedImpl value,
          $Res Function(_$OnLoginPressedImpl) then) =
      __$$OnLoginPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoginPressedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLoginPressedImpl>
    implements _$$OnLoginPressedImplCopyWith<$Res> {
  __$$OnLoginPressedImplCopyWithImpl(
      _$OnLoginPressedImpl _value, $Res Function(_$OnLoginPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoginPressedImpl implements OnLoginPressed {
  const _$OnLoginPressedImpl();

  @override
  String toString() {
    return 'AuthEvent.onLoginPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoginPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoginPressed,
    required TResult Function(String login) loginFieldChanged,
    required TResult Function(String password) passwordFieldChanged,
  }) {
    return onLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoginPressed,
    TResult? Function(String login)? loginFieldChanged,
    TResult? Function(String password)? passwordFieldChanged,
  }) {
    return onLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoginPressed,
    TResult Function(String login)? loginFieldChanged,
    TResult Function(String password)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginPressed value) onLoginPressed,
    required TResult Function(LoginFieldChanged value) loginFieldChanged,
    required TResult Function(PasswordFieldChanged value) passwordFieldChanged,
  }) {
    return onLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginPressed value)? onLoginPressed,
    TResult? Function(LoginFieldChanged value)? loginFieldChanged,
    TResult? Function(PasswordFieldChanged value)? passwordFieldChanged,
  }) {
    return onLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginPressed value)? onLoginPressed,
    TResult Function(LoginFieldChanged value)? loginFieldChanged,
    TResult Function(PasswordFieldChanged value)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed(this);
    }
    return orElse();
  }
}

abstract class OnLoginPressed implements AuthEvent {
  const factory OnLoginPressed() = _$OnLoginPressedImpl;
}

/// @nodoc
abstract class _$$LoginFieldChangedImplCopyWith<$Res> {
  factory _$$LoginFieldChangedImplCopyWith(_$LoginFieldChangedImpl value,
          $Res Function(_$LoginFieldChangedImpl) then) =
      __$$LoginFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$LoginFieldChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginFieldChangedImpl>
    implements _$$LoginFieldChangedImplCopyWith<$Res> {
  __$$LoginFieldChangedImplCopyWithImpl(_$LoginFieldChangedImpl _value,
      $Res Function(_$LoginFieldChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$LoginFieldChangedImpl(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFieldChangedImpl implements LoginFieldChanged {
  const _$LoginFieldChangedImpl(this.login);

  @override
  final String login;

  @override
  String toString() {
    return 'AuthEvent.loginFieldChanged(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFieldChangedImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFieldChangedImplCopyWith<_$LoginFieldChangedImpl> get copyWith =>
      __$$LoginFieldChangedImplCopyWithImpl<_$LoginFieldChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoginPressed,
    required TResult Function(String login) loginFieldChanged,
    required TResult Function(String password) passwordFieldChanged,
  }) {
    return loginFieldChanged(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoginPressed,
    TResult? Function(String login)? loginFieldChanged,
    TResult? Function(String password)? passwordFieldChanged,
  }) {
    return loginFieldChanged?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoginPressed,
    TResult Function(String login)? loginFieldChanged,
    TResult Function(String password)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (loginFieldChanged != null) {
      return loginFieldChanged(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginPressed value) onLoginPressed,
    required TResult Function(LoginFieldChanged value) loginFieldChanged,
    required TResult Function(PasswordFieldChanged value) passwordFieldChanged,
  }) {
    return loginFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginPressed value)? onLoginPressed,
    TResult? Function(LoginFieldChanged value)? loginFieldChanged,
    TResult? Function(PasswordFieldChanged value)? passwordFieldChanged,
  }) {
    return loginFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginPressed value)? onLoginPressed,
    TResult Function(LoginFieldChanged value)? loginFieldChanged,
    TResult Function(PasswordFieldChanged value)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (loginFieldChanged != null) {
      return loginFieldChanged(this);
    }
    return orElse();
  }
}

abstract class LoginFieldChanged implements AuthEvent {
  const factory LoginFieldChanged(final String login) = _$LoginFieldChangedImpl;

  String get login;
  @JsonKey(ignore: true)
  _$$LoginFieldChangedImplCopyWith<_$LoginFieldChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordFieldChangedImplCopyWith<$Res> {
  factory _$$PasswordFieldChangedImplCopyWith(_$PasswordFieldChangedImpl value,
          $Res Function(_$PasswordFieldChangedImpl) then) =
      __$$PasswordFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordFieldChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordFieldChangedImpl>
    implements _$$PasswordFieldChangedImplCopyWith<$Res> {
  __$$PasswordFieldChangedImplCopyWithImpl(_$PasswordFieldChangedImpl _value,
      $Res Function(_$PasswordFieldChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordFieldChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordFieldChangedImpl implements PasswordFieldChanged {
  const _$PasswordFieldChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordFieldChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordFieldChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordFieldChangedImplCopyWith<_$PasswordFieldChangedImpl>
      get copyWith =>
          __$$PasswordFieldChangedImplCopyWithImpl<_$PasswordFieldChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoginPressed,
    required TResult Function(String login) loginFieldChanged,
    required TResult Function(String password) passwordFieldChanged,
  }) {
    return passwordFieldChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoginPressed,
    TResult? Function(String login)? loginFieldChanged,
    TResult? Function(String password)? passwordFieldChanged,
  }) {
    return passwordFieldChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoginPressed,
    TResult Function(String login)? loginFieldChanged,
    TResult Function(String password)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (passwordFieldChanged != null) {
      return passwordFieldChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginPressed value) onLoginPressed,
    required TResult Function(LoginFieldChanged value) loginFieldChanged,
    required TResult Function(PasswordFieldChanged value) passwordFieldChanged,
  }) {
    return passwordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginPressed value)? onLoginPressed,
    TResult? Function(LoginFieldChanged value)? loginFieldChanged,
    TResult? Function(PasswordFieldChanged value)? passwordFieldChanged,
  }) {
    return passwordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginPressed value)? onLoginPressed,
    TResult Function(LoginFieldChanged value)? loginFieldChanged,
    TResult Function(PasswordFieldChanged value)? passwordFieldChanged,
    required TResult orElse(),
  }) {
    if (passwordFieldChanged != null) {
      return passwordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordFieldChanged implements AuthEvent {
  const factory PasswordFieldChanged(final String password) =
      _$PasswordFieldChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordFieldChangedImplCopyWith<_$PasswordFieldChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String login, String password, String errorMessage, bool isSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login, String password, String errorMessage, bool isSuccess});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? isSuccess = null,
  }) {
    return _then(_$AuthStateImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.login,
      required this.password,
      required this.errorMessage,
      required this.isSuccess});

  @override
  final String login;
  @override
  final String password;
  @override
  final String errorMessage;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'AuthState(login: $login, password: $password, errorMessage: $errorMessage, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, login, password, errorMessage, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final String login,
      required final String password,
      required final String errorMessage,
      required final bool isSuccess}) = _$AuthStateImpl;

  @override
  String get login;
  @override
  String get password;
  @override
  String get errorMessage;
  @override
  bool get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
