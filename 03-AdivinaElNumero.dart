// Adivina el numero
// Importaciones
import 'dart:io';
import 'dart:math';

void main() {
  // Intancia de Random
  Random random = Random();

  // Numero entre 0 y 20 (Inclusivo)
  int numeroGenerado = random.nextInt(21);
  int? numeroAdivinado;

  while (numeroGenerado != numeroAdivinado) {
    stdout.write('Adivina el numero entre 0 y 20: ');
    numeroAdivinado = int.parse(stdin.readLineSync()!);
    if (numeroGenerado < numeroAdivinado) {
      print("El numero es menor que $numeroAdivinado");
    } else if (numeroGenerado > numeroAdivinado) {
      print("El numero es mayor que $numeroAdivinado");
    }
  }
  print("Correcto, el numero es $numeroGenerado");
}
