import 'package:flutter/material.dart';

import '../../models/user.dart';

class UserState extends ChangeNotifier {

  UserModel? currentUser;

  // ignore: unused_field
  final _users = [
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'sponsor',
        fullName: '',
        sex: 'man',
        email: 'qazwsx1234@mail.ru',
        password: 'king5678',
        date: DateTime.now(),
        fullAddress: 'РФ, Санкт-Петербург, ул. Ленина, дом 7, кв 228',
        job: ['1c, adobe premier'],
        specialization: 'product',
        serialNumber: '2222 333333'),
    UserModel(
        role: 'sponsor',
        fullName: 'Евгений Понасенков Пистолетов',
        sex: 'man',
        email: 'princ1234@mail.ru',
        password: 'king5678',
        date: DateTime.now(),
        fullAddress: 'Чеченская Респ, Грозный, ул Мусаева, дом 6',
        job: ['1c, adobe premier'],
        specialization: 'product',
        serialNumber: '2222 333333'),
    UserModel(
        role: 'user',
        fullName: 'Adam Musaev Ruslanovich',
        sex: 'man',
        email: 'qwerty@mail.ru',
        password: 'king1234',
        date: DateTime.now(),
        fullAddress: 'Russia, Petropavlovskaya 76/2, кв 4',
        job: ['c++', 'c#', 'python'],
        specialization: 'sport',
        serialNumber: '1111 222222'),
    UserModel(
        role: 'admin',
        fullName: 'Petr Yan Yakubovich',
        sex: 'man',
        email: 'admin1234@mail.ru',
        password: 'unrealman',
        date: DateTime.now(),
        fullAddress: 'Russia, Brooklyn 99, дом 5',
        job: ['3d', 'java'],
        specialization: 'product',
        serialNumber: '3333 444444'),
    UserModel(
        role: 'federal',
        fullName: 'Federal Federalov Federalovich',
        sex: 'woman',
        email: 'womanmoment@mail.ru',
        password: 'stupidwoman',
        date: DateTime.now(),
        fullAddress: 'Russia, Tverskaya 56, дом 5',
        job: ['cotlin, dart'],
        specialization: 'sport',
        serialNumber: '4444 555555')
  ];

  get users => _users;

  void addUser(UserModel user) {
    _users.add(user);
    currentUser = user;
    notifyListeners();
  }
}
