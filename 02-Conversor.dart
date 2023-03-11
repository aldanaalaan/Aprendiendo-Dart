//* Conversor de temperatura en Dart
/*
  * Conversiones
  1. Celsius (°C) a Kelvin (K): K = °C + 273.15
  2. Kelvin (K) a Celsius (°C): °C = K - 273.15
  3. Celsius (°C) a Fahrenheit (°F): °F = (°C * 1.8) + 32
  4. Fahrenheit (°F) a Celsius (°C): °C = (°F - 32) / 1.8
  5. Kelvin (K) a Fahrenheit (°F): °F = (K - 273.15) * 1.8 + 32
  6. Fahrenheit (°F) a Kelvin (K): K = (°F - 32) / 1.8 + 273.15
*/

// Importaciones
import 'dart:io';

//* Funciones de conversion
double CelciusToKelvin(double C) {
  return C + 273.15;
}

double KelvinToCelcius(double K) {
  return K - 273.15;
}

double CelciusToFahrenheit(double C) {
  return (C * 1.8) + 32;
}

double FahrenheitToCelsius(double F) {
  return (F - 32) / 1.8;
}

double KelvinToFahrenheit(double K) {
  return (K - 273.15) * 1.8 + 32;
}

double FahrenheitToKelvin(double F) {
  return (F - 32) / 1.8 + 273.15;
}

void main() {
  print("*Bienbenido a mi conversor de temperatura*");
  print("[1] Celcius a Kelvin");
  print("[2] Kelvin a Celcius");
  print("[3] Celcius a Fahrenheit");
  print("[4] Fahrenheit a Celcius");
  print("[5] Kelvin a Fahrenheit");
  print("[6] Fahrenheit a Kelvin");

  stdout.write('Ingresa una opcion: ');
  int option = int.parse(stdin.readLineSync()!);

  stdout.write('Dame los grados a convertir: ');
  double input = double.parse(stdin.readLineSync()!);

  switch (option) {
    case 1:
      print('${CelciusToKelvin(input)}° Kelvin');
      break;
    case 2:
      print('${KelvinToCelcius(input)}° Celcius');
      break;
    case 3:
      print('${CelciusToFahrenheit(input)}° Fahrenheit');
      break;
    case 4:
      print('${FahrenheitToCelsius(input)}° Celsius');
      break;
    case 5:
      print('${KelvinToFahrenheit(input)}° Fahrenheit');
      break;
    case 6:
      print('${FahrenheitToKelvin(input)}° Kelvin');
      break;
    default:
      print("Operacion no valida");
  }
}
