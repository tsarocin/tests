add_test( tdd_tests.add_standard_integers /workspaces/tests/Hello_World/adder/build/tdd_tests [==[--gtest_filter=tdd_tests.add_standard_integers]==] --gtest_also_run_disabled_tests)
set_tests_properties( tdd_tests.add_standard_integers PROPERTIES WORKING_DIRECTORY /workspaces/tests/Hello_World/adder/build)
add_test( tdd_tests.add_zeros /workspaces/tests/Hello_World/adder/build/tdd_tests [==[--gtest_filter=tdd_tests.add_zeros]==] --gtest_also_run_disabled_tests)
set_tests_properties( tdd_tests.add_zeros PROPERTIES WORKING_DIRECTORY /workspaces/tests/Hello_World/adder/build)
set( tdd_tests_TESTS tdd_tests.add_standard_integers tdd_tests.add_zeros)
