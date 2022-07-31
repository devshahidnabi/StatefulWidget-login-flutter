class ValidationMixin{
  String? validateEmail(value) {
    if (value!.isEmpty || !RegExp('@').hasMatch(value)) {
      return 'Enter valid Email';
    }else {
      return null;
    }
  }

  String? ValidatePassword(value)  {
    if (value!.length < 4) {
      return 'Minimum 4 characters password!';
    }else {
      return null;
    }
  }
}