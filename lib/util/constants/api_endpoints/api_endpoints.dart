class ApiEndpoints {
  //static String baseUrl = 'https://www.shiftsync.online/admin';
  // static String baseUrl = 'http://localhost:8081/admin';
  static String baseUrl = 'http://10.0.2.2:8081/admin';
  static String signInPoint = '/signin/';
  static String applicationEndPoint = '/application/';
  static String approveApplicationPoint = '/application/approve';
  static String leaveRequestsPoint = '/leave/request';
  static String approveLeavePoint = '/leave/approve';
  static String rejectLeavePoint = '/leave/decline';
  static String correctionPoint = '/application/correction';
  static String getAllEmployeesPoint = '/employees';
  static String scheduleDuty = '/schedule/';
  static String getTransactions = '/salary/transactions';
  static String getEmpsForSalary = '/salary/add-details';
  static String addSalary = '/salary/add-details';
  static String editSalary = '/salary/edit-details';
}
