import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/employee/employee.dart';

import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

class AdminEmployeeDetailsCubit extends Cubit<Employee?> {
  final AdminEmployeeRepository adminEmployeeRepository;
  AdminEmployeeDetailsCubit({required this.adminEmployeeRepository}) : super(null);

  Future<void> fetchEmployeeById(String employeeId) async{
    final employee = await adminEmployeeRepository.getEmployeeById(employeeId);
    emit(employee);
  }
}
