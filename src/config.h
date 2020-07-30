#pragma once
#include <string>
#include <map>

std::string eraseSpace(std::string str);

struct Config {
    public:
    Config(const char* configFile);
    std::string value(const std::string key, std::string &input);
    private:
    std::map<std::string, std::string> configMap;
};