part of 'all_employees_bloc.dart';

class AllEmployeesState {
  final bool isLoading;
  AllEmployeesState({required this.isLoading});
}

class AllEmployeesInitial extends AllEmployeesState {
  AllEmployeesInitial() : super(isLoading: true);
}

class AllEmployeesLoading extends AllEmployeesState {
  AllEmployeesLoading() : super(isLoading: true);
}

class AllEmployeesDisplayState extends AllEmployeesState {
  final AllEmployeesModel employeesModel;
  final List<int> unScheduledEmpIds;
  AllEmployeesDisplayState({
    required this.employeesModel,
    required super.isLoading,
    required this.unScheduledEmpIds,
  });
}
