#include "config.h"
#include <cstdlib>
#include <fstream>
#include <algorithm>
#include <iostream>
std::string eraseSpace(std::string str) {
    str.erase(std::remove_if(str.begin(), str.end(), isspace), str.end());
    return str;
}

Config::Config(const char* configFile) {
    std::ifstream file(configFile);
    std::string line;
    std::string key;
    std::string value;
    std::size_t equalPos;
    if(!file.is_open()) {
        exit(0);
    }
    while(std::getline(file, line)) {
        if(line[0] == '#')  continue;
        if(line[0] == ';')  continue;
        equalPos = line.find('=');
        key = eraseSpace(line.substr(0, equalPos));
        value = eraseSpace(line.substr(equalPos + 1, line.length()));
        std::cout << "key is: " << key << "value is: " << value << std::endl;
        configMap[key] = value;
    }
}
std::string Config::value(const std::string key, std::string &input) {
    input = configMap[key];
    return configMap[key];
}
