class UserModel {
  String role;
  String firstName;
  String lastName;
  String daddyName;
  String sex;
  String email;
  String password;
  DateTime date;
  String Country;
  String Address;
  String? job;
  String? specialization;
  String serialNumber;

  UserModel({
    required this.role,
    required this.firstName,
    required this.lastName,
    required this.daddyName,
    required this.sex,
    required this.email,
    required this.password,
    required this.date,
    required this.Country,
    required this.Address,
    required this.job,
    required this.specialization,
    required this.serialNumber
  });
}

var f = [
  UserModel(
      role: '',
      firstName: '',
      lastName: '',
      daddyName: '',
      sex: '',
      email: '',
      password: '',
      date: DateTime.now(),
      Country: '',
      Address: '',
      job: '',
      specialization: '',
      serialNumber: ''
  )
];