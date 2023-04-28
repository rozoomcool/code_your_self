class UserModel {
  String role;
  String fullName;
  String sex;
  String email;
  String password;
  DateTime date;
  String fullAddress;
  List<String>? job;
  String? specialization;
  String serialNumber;

  UserModel({
    required this.role,
    required this.fullName,
    required this.sex,
    required this.email,
    required this.password,
    required this.date,
    required this.fullAddress,
    required this.job,
    required this.specialization,
    required this.serialNumber
  });
}