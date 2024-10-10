class FormValidator {
  static bool validateString(String value) {
    return value.isNotEmpty;
  }

  static bool validateDropdown(String? value) {
    return value != null && value.isNotEmpty;
  }

  static bool validateAdditionalDesign(String value) {
    return value.isNotEmpty;
  }
}
