#include <iostream>
#include <cstring>
#include <mosquitto.h>

int main() {
    int rc;
    struct mosquitto *mosq;

    mosquitto_lib_init();
    mosq = mosquitto_new("publisher-test", true, nullptr);

    rc = mosquitto_connect(mosq, "localhost", 1884, 60);
    if (rc != 0) {
        std::cout << "Client could not connect to broker! Error Code: " << rc << std::endl;
        mosquitto_destroy(mosq);
        mosquitto_lib_cleanup();
        return -1;
    }

    std::cout << "We are now connected to the broker!" << std::endl;

    const char* message = "Hello";
    rc = mosquitto_publish(mosq, nullptr, "test/t1", std::strlen(message), message, 0, false);
    if (rc != 0) {
        std::cerr << "Error publishing message! Error Code: " << rc << std::endl;
    }

    mosquitto_disconnect(mosq);
    mosquitto_destroy(mosq);
    mosquitto_lib_cleanup();

    return 0;
}
