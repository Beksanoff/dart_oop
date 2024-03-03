// README
// Этот код предназначен исключительно для тренировки и демонстрации принципов ООП.
// С точки зрения архитектуры, он может быть неправильным и слишком сложным.
// Здесь я тренировал свои навыки в ООП.
// Спасибо за внимание!

// 03.03.2023

// README
// This code is purely for training and demonstrating Object-Oriented Programming (OOP) concepts.
// From an architectural perspective, it may not be considered correct and may be too complex.
// The purpose of this code is to practice OOP principles.
// Thank you for your attention!

// Миксин ProgrammingLanguage
mixin ProgrammingLanguage {
  void languageMachine() {
    print('Язык программирования: Dart!');
  }
}

// Интерфейс ID
class ID {
  final int id;

  ID(this.id);
}

// Extension для класса User, с Днем Валентина!
extension valentineUser on User {
  String get valentine => 'Happy Valentine\'s Day, $name';
}

// Класс User реализует миксин ProgrammingLanguage
class User with ProgrammingLanguage {
  final String name;
  final int age;

  User({required this.name, required this.age});

  @override
  String toString() {
    return 'Имя пользователя: $name, возраст: $age';
  }
}

// Класс UserPro наследует класс User и реализует интерфейс ID и миксин ProgrammingLanguage
class UserPro with ProgrammingLanguage implements User, ID {
  final String email;
  @override
  final String name;
  @override
  final int age;
  @override
  final int id;

  UserPro({
    required this.email,
    required this.name,
    required this.age,
    required this.id,
  });

  // Переопределение метода toString
  @override
  String toString() {
    return 'Имя пользователя: $name, возраст: $age, email: $email';
  }
}

void main() {
  var user = User(name: 'Amir', age: 30); // Создание объекта класса User
  var userPro = UserPro(
      name: 'Dmitry',
      age: 30,
      email: 'aask@gmail.com',
      id: 3); // Создание объекта класса UserPro

  user.languageMachine();
  print(user.valentine);
  print(userPro.email);
  print(userPro.valentine);
}
