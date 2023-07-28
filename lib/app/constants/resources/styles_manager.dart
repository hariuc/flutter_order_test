part of app_constants_index;

class StylesManager {
  final double fontSize;
  final Color color;

  StylesManager({this.fontSize = 12.0, this.color = Colors.black});

  TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
    return TextStyle(
        fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
  }

  TextStyle getRegularStyle() {
    return _getTextStyle(fontSize, FontConstants.fontFamilyRobotoRegular, FontWeightManager.regular, color);
  }

  TextStyle getLightStyle() {
    return _getTextStyle(fontSize, FontConstants.fontFamilyRobotoRegular, FontWeightManager.light, color);
  }

  TextStyle getBoldStyle() {
    return _getTextStyle(fontSize, FontConstants.fontFamilyRobotoRegular, FontWeightManager.bold, color);
  }

  TextStyle getMediumStyle() {
    return _getTextStyle(fontSize, FontConstants.fontFamilyRobotoRegular, FontWeightManager.medium, color);
  }
}