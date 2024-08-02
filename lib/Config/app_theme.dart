import 'package:flutter/material.dart';

// Static field with custom color, private field _customColor
const Color _customColor = Color(0xFF49149F);

// Another static filed, for a List of colors
const List<Color> _colorThemes = [
  //Purple color
  _customColor,
  // Lost of Colors
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  // the color thats will be selected
  final int selectedColor;

  // Si el color seleccionado es mayor o igual que 0 o menos que el tamaño de la lista
  // que en este caso es de 7 elementos y 6 indices 0 a 6 y 7 elementos por que contamos
  // el _customColor es 0 en este caso, ya que en dart la listas son indexadas desde el 0
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  // Usamos la clase ThemeData con el metodo theme que devuelve un ThemeData con las propiedades
  //  useMaterial3: true y colorSchemeSeed: _colorThemes[selectedColor] con el color seleccionado para ese
  // Thema
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
