# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspaces/tests/build/mosquitto-prefix/src/mosquitto"
  "/workspaces/tests/build/mosquitto-prefix/src/mosquitto-build"
  "/workspaces/tests/build/mosquitto-prefix"
  "/workspaces/tests/build/mosquitto-prefix/tmp"
  "/workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp"
  "/workspaces/tests/build/mosquitto-prefix/src"
  "/workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspaces/tests/build/mosquitto-prefix/src/mosquitto-stamp${cfgdir}") # cfgdir has leading slash
endif()
