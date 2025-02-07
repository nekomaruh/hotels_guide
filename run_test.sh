# Run tests
flutter test --coverage

# Exclude non unit-tests
lcov --remove coverage/lcov.info 'lib/ui/core/*' 'lib/ui/*/widgets' 'lib/ui/*/cubit' 'lib/ui/*/models' 'lib/main.dart' -o coverage/lcov_unit_test.info

# Generate report
genhtml ./coverage/lcov_unit_test.info -o coverage

# Generate badge
dart run test_coverage_badge --file ./coverage/lcov_unit_test.info