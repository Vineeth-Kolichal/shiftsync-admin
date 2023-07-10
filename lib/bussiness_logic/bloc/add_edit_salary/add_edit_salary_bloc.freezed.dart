// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_salary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditSalaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployeeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditSalaryEventCopyWith<$Res> {
  factory $AddEditSalaryEventCopyWith(
          AddEditSalaryEvent value, $Res Function(AddEditSalaryEvent) then) =
      _$AddEditSalaryEventCopyWithImpl<$Res, AddEditSalaryEvent>;
}

/// @nodoc
class _$AddEditSalaryEventCopyWithImpl<$Res, $Val extends AddEditSalaryEvent>
    implements $AddEditSalaryEventCopyWith<$Res> {
  _$AddEditSalaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEmployeeListCopyWith<$Res> {
  factory _$$GetEmployeeListCopyWith(
          _$GetEmployeeList value, $Res Function(_$GetEmployeeList) then) =
      __$$GetEmployeeListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployeeListCopyWithImpl<$Res>
    extends _$AddEditSalaryEventCopyWithImpl<$Res, _$GetEmployeeList>
    implements _$$GetEmployeeListCopyWith<$Res> {
  __$$GetEmployeeListCopyWithImpl(
      _$GetEmployeeList _value, $Res Function(_$GetEmployeeList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployeeList implements GetEmployeeList {
  const _$GetEmployeeList();

  @override
  String toString() {
    return 'AddEditSalaryEvent.getEmployeeList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployeeList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployeeList,
  }) {
    return getEmployeeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployeeList,
  }) {
    return getEmployeeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployeeList,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
  }) {
    return getEmployeeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
  }) {
    return getEmployeeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList(this);
    }
    return orElse();
  }
}

abstract class GetEmployeeList implements AddEditSalaryEvent {
  const factory GetEmployeeList() = _$GetEmployeeList;
}

/// @nodoc
mixin _$AddEditSalaryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Employee> get allEmployee => throw _privateConstructorUsedError;
  List<int> get salaryNotAddedEmployeeIdList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditSalaryStateCopyWith<AddEditSalaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditSalaryStateCopyWith<$Res> {
  factory $AddEditSalaryStateCopyWith(
          AddEditSalaryState value, $Res Function(AddEditSalaryState) then) =
      _$AddEditSalaryStateCopyWithImpl<$Res, AddEditSalaryState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Employee> allEmployee,
      List<int> salaryNotAddedEmployeeIdList});
}

/// @nodoc
class _$AddEditSalaryStateCopyWithImpl<$Res, $Val extends AddEditSalaryState>
    implements $AddEditSalaryStateCopyWith<$Res> {
  _$AddEditSalaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? allEmployee = null,
    Object? salaryNotAddedEmployeeIdList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allEmployee: null == allEmployee
          ? _value.allEmployee
          : allEmployee // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      salaryNotAddedEmployeeIdList: null == salaryNotAddedEmployeeIdList
          ? _value.salaryNotAddedEmployeeIdList
          : salaryNotAddedEmployeeIdList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AddEditSalaryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Employee> allEmployee,
      List<int> salaryNotAddedEmployeeIdList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddEditSalaryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? allEmployee = null,
    Object? salaryNotAddedEmployeeIdList = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allEmployee: null == allEmployee
          ? _value._allEmployee
          : allEmployee // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      salaryNotAddedEmployeeIdList: null == salaryNotAddedEmployeeIdList
          ? _value._salaryNotAddedEmployeeIdList
          : salaryNotAddedEmployeeIdList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required final List<Employee> allEmployee,
      required final List<int> salaryNotAddedEmployeeIdList})
      : _allEmployee = allEmployee,
        _salaryNotAddedEmployeeIdList = salaryNotAddedEmployeeIdList;

  @override
  final bool isLoading;
  final List<Employee> _allEmployee;
  @override
  List<Employee> get allEmployee {
    if (_allEmployee is EqualUnmodifiableListView) return _allEmployee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEmployee);
  }

  final List<int> _salaryNotAddedEmployeeIdList;
  @override
  List<int> get salaryNotAddedEmployeeIdList {
    if (_salaryNotAddedEmployeeIdList is EqualUnmodifiableListView)
      return _salaryNotAddedEmployeeIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salaryNotAddedEmployeeIdList);
  }

  @override
  String toString() {
    return 'AddEditSalaryState(isLoading: $isLoading, allEmployee: $allEmployee, salaryNotAddedEmployeeIdList: $salaryNotAddedEmployeeIdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._allEmployee, _allEmployee) &&
            const DeepCollectionEquality().equals(
                other._salaryNotAddedEmployeeIdList,
                _salaryNotAddedEmployeeIdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_allEmployee),
      const DeepCollectionEquality().hash(_salaryNotAddedEmployeeIdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AddEditSalaryState {
  const factory _Initial(
      {required final bool isLoading,
      required final List<Employee> allEmployee,
      required final List<int> salaryNotAddedEmployeeIdList}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  List<Employee> get allEmployee;
  @override
  List<int> get salaryNotAddedEmployeeIdList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
