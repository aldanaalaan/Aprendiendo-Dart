import 'dart:io';
import 'figuras.dart';

void main() {
  print("Calculadora de áreas y perímetros de figuras\n");

  while (true) {
    print("Selecciona una figura:");
    print("1. Cuadrado");
    print("2. Rectángulo");
    print("3. Círculo");
    print("4. Trapecio");
    print("5. Triángulo");
    print("6. Polígono Regular");
    print("7. Salir\n");

    stdout.write("Opción: ");
    String? opcion = stdin.readLineSync();

    if (opcion == "7") {
      break;
    }

    switch (opcion) {
      case "1":
        stdout.write("Lado: ");
        double lado = double.parse(stdin.readLineSync()!);
        Cuadrado c = Cuadrado(lado);
        print("Área: ${c.area()}");
        print("Perímetro: ${c.perimetro()}\n");
        break;
      case "2":
        stdout.write("Base: ");
        double base = double.parse(stdin.readLineSync()!);
        stdout.write("Altura: ");
        double altura = double.parse(stdin.readLineSync()!);
        Rectangulo r = Rectangulo(base, altura);
        print("Área: ${r.area()}");
        print("Perímetro: ${r.perimetro()}\n");
        break;
      case "3":
        stdout.write("Radio: ");
        double radio = double.parse(stdin.readLineSync()!);
        Circulo circ = Circulo(radio);
        print("Área: ${circ.area()}");
        print("Perímetro: ${circ.perimetro()}\n");
        break;
      case "4":
        stdout.write("Base menor: ");
        double baseMenor = double.parse(stdin.readLineSync()!);
        stdout.write("Base mayor: ");
        double baseMayor = double.parse(stdin.readLineSync()!);
        stdout.write("Altura: ");
        double altura = double.parse(stdin.readLineSync()!);
        Trapecio t = Trapecio(baseMenor, baseMayor, altura);
        print("Área: ${t.area()}\n");
        break;
      case "5":
        stdout.write("Base: ");
        double base = double.parse(stdin.readLineSync()!);
        stdout.write("Altura: ");
        double altura = double.parse(stdin.readLineSync()!);
        Triangulo tri = Triangulo(base, altura);
        print("Área: ${tri.area()}\n");
        break;
      case "6":
        stdout.write("Longitud del lado: ");
        double longitudLado = double.parse(stdin.readLineSync()!);
        stdout.write("Cantidad de lados: ");
        int lados = int.parse(stdin.readLineSync()!);
        PoligonoRegular p = PoligonoRegular(longitudLado, lados);
        print("Área: ${p.area()}");
        print("Perímetro: ${p.perimetro()}\n");
        break;
      default:
        print("Opción inválida\n");
        break;
    }
  }
}
