#include <iostream>
#include <cstring>
#include <mosquitto.h>

int main() {
    int rc;
    struct mosquitto *mosq;

    mosquitto_lib_init();
    mosq = mosquitto_new("weather_publisher", true, nullptr);

    rc = mosquitto_connect(mosq, "test.mosquitto.org", 1883, 60);
    if (rc != 0) {
        std::cout << "Client could not connect to broker! Error Code: " << rc << std::endl;
        mosquitto_destroy(mosq);
        mosquitto_lib_cleanup();
        return -1;
    }

    std::cout << "We are now connected to the broker!" << std::endl;

    const char* message1 = "It is cold, use a jacket";
    rc = mosquitto_publish(mosq, nullptr, "weather/temperature", std::strlen(message1), message1, 0, false);
    if (rc != 0) {
        std::cerr << "Error publishing message! Error Code: " << rc << std::endl;
    }

    const char* message2 = "It is dark, use a light";
    rc = mosquitto_publish(mosq, nullptr, "weather/light", std::strlen(message2), message2, 0, false);
    if (rc != 0) {
        std::cerr << "Error publishing message! Error Code: " << rc << std::endl;
    }

    mosquitto_disconnect(mosq);
    mosquitto_destroy(mosq);
    mosquitto_lib_cleanup();

    return 0;
}
