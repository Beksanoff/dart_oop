import 'package:test/test.dart';
import 'package:dart_oop/dart_oop.dart';

void main() {
  group('User class tests', () {
    test('User toString() method should return correct string representation',
        () {
      var user = User(name: 'John', age: 25);
      expect(user.toString(), equals('Имя пользователя: John, возраст: 25'));
    });

    test('User languageMachine() method should print correct message', () {
      var user = User(name: 'John', age: 25);
      expect(() => user.languageMachine(),
          prints('Язык программирования: Dart!\n'));
    });

    test('User valentine getter should return correct Valentine\'s Day message',
        () {
      var user = User(name: 'John', age: 25);
      expect(user.valentine, equals('Happy Valentine\'s Day, John'));
    });
  });

  group('UserPro class tests', () {
    test(
        'UserPro toString() method should return correct string representation',
        () {
      var userPro =
          UserPro(name: 'Jane', age: 30, email: 'jane@example.com', id: 1);
      expect(
          userPro.toString(),
          equals(
              'Имя пользователя: Jane, возраст: 30, email: jane@example.com'));
    });

    test('UserPro languageMachine() method should print correct message', () {
      var userPro =
          UserPro(name: 'Jane', age: 30, email: 'jane@example.com', id: 1);
      expect(() => userPro.languageMachine(),
          prints('Язык программирования: Dart!\n'));
    });

    test(
        'UserPro valentine getter should return correct Valentine\'s Day message',
        () {
      var userPro =
          UserPro(name: 'Jane', age: 30, email: 'jane@example.com', id: 1);
      expect(userPro.valentine, equals('Happy Valentine\'s Day, Jane'));
    });
  });
}
