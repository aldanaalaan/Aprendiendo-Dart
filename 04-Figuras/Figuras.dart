import 'dart:math';

abstract class Figura {
  double area();
}

abstract class FiguraPerimetro extends Figura {
  @override
  double area();

  double perimetro();
}

class Cuadrado extends FiguraPerimetro {
  double _lado;

  Cuadrado(this._lado);

  @override
  double area() {
    return _lado * _lado;
  }

  @override
  double perimetro() {
    return _lado * 4;
  }
}

class Rectangulo extends FiguraPerimetro {
  double _base;
  double _altura;

  Rectangulo(this._base, this._altura);

  @override
  double area() {
    return _base * _altura;
  }

  @override
  double perimetro() {
    return (_base + _altura) * 2;
  }
}

class Circulo extends FiguraPerimetro {
  double _radio;

  Circulo(this._radio);

  @override
  double area() {
    return pi * _radio * _radio;
  }

  @override
  double perimetro() {
    return pi * _radio * 2;
  }

  double diametro() {
    return _radio * 2;
  }
}

class Trapecio extends Figura {
  double _baseMenor;
  double _baseMayor;
  double _altura;

  Trapecio(this._baseMenor, this._baseMayor, this._altura);

  @override
  double area() {
    return (_baseMenor + _baseMayor) / 2 * _altura;
  }
}

class Triangulo extends Figura {
  double _base;
  double _altura;

  Triangulo(this._base, this._altura);

  @override
  double area() {
    return _base * _altura / 2;
  }
}

class PoligonoRegular extends FiguraPerimetro {
  double _longitudLado;
  int _lados;

  PoligonoRegular(this._longitudLado, this._lados);

  @override
  double perimetro() {
    return _longitudLado * _lados;
  }

  @override
  double area() {
    return perimetro() * apotema() / 2;
  }

  double apotema() {
    return (_longitudLado) / (2 * tan(pi / _lados));
  }
}
