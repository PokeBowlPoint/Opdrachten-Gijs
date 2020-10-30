import 'package:flutter_app_table/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Email unit test
  test('empty email returns error string', () {
    var result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });
  test('non-empty email returns null', () {
    var result = EmailFieldValidator.validate('Email');
    expect(result, null);
  });
  // Password unit test
  test('empty password returns error string', () {
    var result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });
  test('non-empty password returns null', () {
    var result = PasswordFieldValidator.validate('Password');
    expect(result, null);
  });

}