if(EXISTS "/workspaces/tests/Hello_World/googletest/build/tests[1]_tests.cmake")
  include("/workspaces/tests/Hello_World/googletest/build/tests[1]_tests.cmake")
else()
  add_test(tests_NOT_BUILT tests_NOT_BUILT)
endif()