import 'dart:io';

void main() {
  print("Bienvenido al Gestor de archivos asincrono");
  String? opcion;
  do {
    print("[1] Leer archivo");
    print("[2] Salir");
    stdout.write("Elije una opcion: ");
    opcion = stdin.readLineSync();
    if (opcion == null || (opcion != "1" && opcion != "2")) {
      continue;
    } else if (opcion == "2") {
      print("Adios");
      break;
    }
    stdout.write("Dame la ruta de tu archivo: ");
    String ubicacion = stdin.readLineSync()!;
    File archivo;
    try {
      archivo = File(ubicacion);
    } catch (e) {
      print("Archivo no encontrado");
      continue;
    }
    String contenido = archivo.readAsStringSync();
    print('El archivo contiene ${contarPalabras(contenido)} palabras.');
  } while (opcion == "1");
}

int contarPalabras(String texto) {
  List<String>? palabras;
  String modificado;

  modificado =
      texto.replaceAll(RegExp('[".,\\/#!\$%\^&\*;:{}=\-_~()]\'\n'), "");

  palabras = modificado.split(" ");

  return palabras.length;
}
