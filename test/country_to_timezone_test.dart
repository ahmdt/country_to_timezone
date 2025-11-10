import 'package:country_to_timezone/country_to_timezone.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('finds timezone for country without alias', () {
    final timezone = CountryToTimezone.convert('DE');
    expect(timezone, 'Europe/Berlin');
  });

  test('finds timezone for country with alias', () {
    final timezone = CountryToTimezone.convert('GB');
    expect(timezone, 'Europe/London');
  });

  test('finds nothing for bad country', () {
    final timezone = CountryToTimezone.convert('RUSSIA');
    expect(timezone, isNull);
  });
}
