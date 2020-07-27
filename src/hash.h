#pragma once
#include <iostream>

constexpr std::size_t hash(const char *s, int off = 0) {            
      return !s[off] ? 5381 : (hash(s, off+1)*33) ^ s[off];                           
}
inline constexpr std::size_t operator""_(const char *s, std::size_t) {
    return hash(s);
}