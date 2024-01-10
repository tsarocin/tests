cmake_minimum_required(VERSION 3.10.2)

# Setze den Projektnamen auf den Namen deines Projekts; "template" ist nicht sehr aussagekräftig
project(mqtt_pub VERSION 0.0.2 LANGUAGES CXX)

# Lege den C++-Standard fest
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Füge manuell die Mosquitto-Bibliothekspfade hinzu
set(MOSQUITTO_INCLUDE_DIRS "/usr/include")
set(MOSQUITTO_LIBRARIES "/usr/lib/x86_64-linux-gnu/libmosquitto.so")

# Füge das ausführbare Programm hinzu
add_executable(mqtt_pub mqtt_pub.cpp)

# Füge Bibliotheken hinzu
target_include_directories(mqtt_pub PRIVATE ${MOSQUITTO_INCLUDE_DIRS})
target_link_libraries(mqtt_pub PRIVATE ${MOSQUITTO_LIBRARIES})
