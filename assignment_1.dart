import 'dart:io';
import 'dart:math';

String readText(String message) {
  print(message);
  return stdin.readLineSync() ?? '';
}

void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
  task7();
  task8();
  task9();
  task10();
}


void task1() {
  print('\nTask 1');
  int n = int.parse(readText('Enter a number:'));
  if (n % 2 == 0) {
    print('Yes');
  } else {
    print('No');
  }
}


void task2() {
  print('\nTask 2');
  double a = double.parse(readText('Enter number 1:'));
  double b = double.parse(readText('Enter number 2:'));
  double c = double.parse(readText('Enter number 3:'));

  double temp;
  if (a > b) {
    temp = a;
    a = b;
    b = temp;
  }
  if (b > c) {
    temp = b;
    b = c;
    c = temp;
  }
  if (a > b) {
    temp = a;
    a = b;
    b = temp;
  }
  print('Output:');
  print(a);
  print(b);
  print(c);
}


void task3() {
  print('\nTask 3');
  int year = int.parse(readText('Enter a year:'));
  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print('$year is a Leap Year');
  } else {
    print('$year is not a Leap Year');
  }
}


void task4() {
  print('\nTask 4');
  int age = int.parse(readText('Enter your age:'));
  if (age >= 21) {
    print('Congratulation! You are eligible for casting your vote');
  } else {
    print('Sorry, you are not eligible for casting your vote');
  }
}


void task5() {
  print('\nTask 5');
  String ch = readText('Enter an alphabet:').toLowerCase();
  if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
    print('The alphabet is a vowel');
  } else {
    print('The alphabet is a consonant');
  }
}


void task6() {
  print('\nTask 6 ');
  int a = int.parse(readText('Enter number 1:'));
  int b = int.parse(readText('Enter number 2:'));
  int c = int.parse(readText('Enter number 3:'));

  int max = a > b ? (a > c ? a : c) : (b > c ? b : c);
  int min = a < b ? (a < c ? a : c) : (b < c ? b : c);

  print('Max = $max');
  print('Min = $min');
}


void task7() {
  print('\nTask 7');
  int x = 3;
  int y = 2;
  int z = x++;
  int w = ++y;


  print('x=$x, y=$y, z=$z, w=$w');
}


void task8() {
  print('\nTask 8');
  String grade = readText('Enter the grade:').toUpperCase();
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Outstanding');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Can Do Better');
      break;
    case 'F':
      print('Failed !');
      break;
    default:
      print('Invalid Grade');
  }
}


void task9() {
  print('\nTask 9');
  print('Enter the radius and length of a cylinder:');
  double radius = double.parse(stdin.readLineSync()!);
  double length = double.parse(stdin.readLineSync()!);

  double area = radius * radius * pi;
  double volume = area * length;

  print('The area is ${area.toStringAsFixed(4)}');
  print('The volume is ${volume.toStringAsFixed(1)}');
}


void task10() {
  print('\nTask 10');
  int n = int.parse(readText('Enter an integer:'));
  if (n > 0) {
    print('Positive');
  } else if (n < 0) {
    print('Negative');
  } else {
    print('Zero');
  }
}