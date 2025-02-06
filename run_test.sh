flutter test --coverage
genhtml ./coverage/lcov.info -o coverage
dart run test_coverage_badge --file ./coverage/lcov.info