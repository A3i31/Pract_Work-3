import 'dart:io';

void main() {
  registration();
  counter();
  sum();
}

void registration() {
  print('Регистрация!\nВведите логин');
  String user = stdin.readLineSync() ?? '';
  print('Введите пароль');
  String password = stdin.readLineSync() ?? '';
  print('Повторите пароль');
  String password1 = stdin.readLineSync() ?? '';
  while (checkRegistrationPass(password1, password)) {
    print('Не сходится');
    password1 = stdin.readLineSync() ?? '';
  }
  print('Вы успешно зарегистрированы!\nПовторите вход\nВведите логин');
  String user1 = stdin.readLineSync() ?? '';
  while (checkUser(user1, user)) {
    print('Введите правильный логин');
    user1 = stdin.readLineSync() ?? '';
  }
  print('Введите пароль');
  String password3 = stdin.readLineSync() ?? '';
  while (checkPass(password3, password)) {
    print('Введите правильный пароль');
    password3 = stdin.readLineSync() ?? '';
  }
}

bool checkRegistrationPass(String password1, String password) {
  return password1 != password;
}

bool checkUser(String user1, String user) {
  return user1 != user;
}

bool checkPass(String password3, String password) {
  return password3 != password;
}

void counter() {
  List<int> numbers = [];
  while (true) {
    print(
        'Введите число с клавиатуры, и чтобы увидеть его результат, нажмите цифру 0:');
    int? num = int.tryParse(stdin.readLineSync() ?? '');
    while (num == null) {
      print('Введите корректное число:');
      num = int.tryParse(stdin.readLineSync() ?? '');
    }

    if (num == 0) {
      break;
    }

    numbers.add(num);
  }

  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  double arithmetic = sum / numbers.length;
  print('Введенные числа: $numbers');
  print('Количество чисел: ${numbers.length}');
  print('Сумма чисел: $sum');
  print('Среднее арифметическое чисел: $arithmetic');
}

void sum() {
  print('Введите начало диапазона: ');
  int? startNum = int.tryParse(stdin.readLineSync() ?? '');
  while (startNum == null) {
    print('Введите корректное число:');
    startNum = int.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите конец диапазона');
  int? endNum = int.tryParse(stdin.readLineSync() ?? '');
  while (endNum == null) {
    print('Введите корректное число:');
    endNum = int.tryParse(stdin.readLineSync() ?? '');
  }
  int sum = 0;
  for (int i = startNum; i <= endNum; i++) {
    if (i.isOdd) {
      sum += i;
    }
  }
  print('Все нечётные целые числа в диапазоне от $startNum до $endNum: $sum');
}
