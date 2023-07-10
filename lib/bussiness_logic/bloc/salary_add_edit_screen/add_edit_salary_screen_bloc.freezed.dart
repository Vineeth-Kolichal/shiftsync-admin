// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_salary_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditSalaryScreenEvent {
  SalaryAddEditModel get salarydetails => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalaryAddEditModel salarydetails) add,
    required TResult Function(SalaryAddEditModel salarydetails) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalaryAddEditModel salarydetails)? add,
    TResult? Function(SalaryAddEditModel salarydetails)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalaryAddEditModel salarydetails)? add,
    TResult Function(SalaryAddEditModel salarydetails)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditSalaryScreenEventCopyWith<AddEditSalaryScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditSalaryScreenEventCopyWith<$Res> {
  factory $AddEditSalaryScreenEventCopyWith(AddEditSalaryScreenEvent value,
          $Res Function(AddEditSalaryScreenEvent) then) =
      _$AddEditSalaryScreenEventCopyWithImpl<$Res, AddEditSalaryScreenEvent>;
  @useResult
  $Res call({SalaryAddEditModel salarydetails});
}

/// @nodoc
class _$AddEditSalaryScreenEventCopyWithImpl<$Res,
        $Val extends AddEditSalaryScreenEvent>
    implements $AddEditSalaryScreenEventCopyWith<$Res> {
  _$AddEditSalaryScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salarydetails = null,
  }) {
    return _then(_value.copyWith(
      salarydetails: null == salarydetails
          ? _value.salarydetails
          : salarydetails // ignore: cast_nullable_to_non_nullable
              as SalaryAddEditModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCopyWith<$Res>
    implements $AddEditSalaryScreenEventCopyWith<$Res> {
  factory _$$AddCopyWith(_$Add value, $Res Function(_$Add) then) =
      __$$AddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalaryAddEditModel salarydetails});
}

/// @nodoc
class __$$AddCopyWithImpl<$Res>
    extends _$AddEditSalaryScreenEventCopyWithImpl<$Res, _$Add>
    implements _$$AddCopyWith<$Res> {
  __$$AddCopyWithImpl(_$Add _value, $Res Function(_$Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salarydetails = null,
  }) {
    return _then(_$Add(
      salarydetails: null == salarydetails
          ? _value.salarydetails
          : salarydetails // ignore: cast_nullable_to_non_nullable
              as SalaryAddEditModel,
    ));
  }
}

/// @nodoc

class _$Add implements Add {
  _$Add({required this.salarydetails});

  @override
  final SalaryAddEditModel salarydetails;

  @override
  String toString() {
    return 'AddEditSalaryScreenEvent.add(salarydetails: $salarydetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Add &&
            (identical(other.salarydetails, salarydetails) ||
                other.salarydetails == salarydetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salarydetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCopyWith<_$Add> get copyWith =>
      __$$AddCopyWithImpl<_$Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalaryAddEditModel salarydetails) add,
    required TResult Function(SalaryAddEditModel salarydetails) update,
  }) {
    return add(salarydetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalaryAddEditModel salarydetails)? add,
    TResult? Function(SalaryAddEditModel salarydetails)? update,
  }) {
    return add?.call(salarydetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalaryAddEditModel salarydetails)? add,
    TResult Function(SalaryAddEditModel salarydetails)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(salarydetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements AddEditSalaryScreenEvent {
  factory Add({required final SalaryAddEditModel salarydetails}) = _$Add;

  @override
  SalaryAddEditModel get salarydetails;
  @override
  @JsonKey(ignore: true)
  _$$AddCopyWith<_$Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res>
    implements $AddEditSalaryScreenEventCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalaryAddEditModel salarydetails});
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$AddEditSalaryScreenEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salarydetails = null,
  }) {
    return _then(_$Update(
      salarydetails: null == salarydetails
          ? _value.salarydetails
          : salarydetails // ignore: cast_nullable_to_non_nullable
              as SalaryAddEditModel,
    ));
  }
}

/// @nodoc

class _$Update implements Update {
  _$Update({required this.salarydetails});

  @override
  final SalaryAddEditModel salarydetails;

  @override
  String toString() {
    return 'AddEditSalaryScreenEvent.update(salarydetails: $salarydetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.salarydetails, salarydetails) ||
                other.salarydetails == salarydetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salarydetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SalaryAddEditModel salarydetails) add,
    required TResult Function(SalaryAddEditModel salarydetails) update,
  }) {
    return update(salarydetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SalaryAddEditModel salarydetails)? add,
    TResult? Function(SalaryAddEditModel salarydetails)? update,
  }) {
    return update?.call(salarydetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SalaryAddEditModel salarydetails)? add,
    TResult Function(SalaryAddEditModel salarydetails)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(salarydetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements AddEditSalaryScreenEvent {
  factory Update({required final SalaryAddEditModel salarydetails}) = _$Update;

  @override
  SalaryAddEditModel get salarydetails;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddEditSalaryScreenState {
  bool get isLaoding => throw _privateConstructorUsedError;
  CommonRespModel? get respModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditSalaryScreenStateCopyWith<AddEditSalaryScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditSalaryScreenStateCopyWith<$Res> {
  factory $AddEditSalaryScreenStateCopyWith(AddEditSalaryScreenState value,
          $Res Function(AddEditSalaryScreenState) then) =
      _$AddEditSalaryScreenStateCopyWithImpl<$Res, AddEditSalaryScreenState>;
  @useResult
  $Res call({bool isLaoding, CommonRespModel? respModel});
}

/// @nodoc
class _$AddEditSalaryScreenStateCopyWithImpl<$Res,
        $Val extends AddEditSalaryScreenState>
    implements $AddEditSalaryScreenStateCopyWith<$Res> {
  _$AddEditSalaryScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLaoding = null,
    Object? respModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLaoding: null == isLaoding
          ? _value.isLaoding
          : isLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      respModel: freezed == respModel
          ? _value.respModel
          : respModel // ignore: cast_nullable_to_non_nullable
              as CommonRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddEditSalaryScreenStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLaoding, CommonRespModel? respModel});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddEditSalaryScreenStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLaoding = null,
    Object? respModel = freezed,
  }) {
    return _then(_$Initial(
      isLaoding: null == isLaoding
          ? _value.isLaoding
          : isLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      respModel: freezed == respModel
          ? _value.respModel
          : respModel // ignore: cast_nullable_to_non_nullable
              as CommonRespModel?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required this.isLaoding, required this.respModel});

  @override
  final bool isLaoding;
  @override
  final CommonRespModel? respModel;

  @override
  String toString() {
    return 'AddEditSalaryScreenState(isLaoding: $isLaoding, respModel: $respModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.isLaoding, isLaoding) ||
                other.isLaoding == isLaoding) &&
            (identical(other.respModel, respModel) ||
                other.respModel == respModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLaoding, respModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);
}

abstract class Initial implements AddEditSalaryScreenState {
  const factory Initial(
      {required final bool isLaoding,
      required final CommonRespModel? respModel}) = _$Initial;

  @override
  bool get isLaoding;
  @override
  CommonRespModel? get respModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
