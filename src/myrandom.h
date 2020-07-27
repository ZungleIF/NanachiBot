
#include <random>
#include <iterator>

template<typename Iter, typename RandomGenerator>
Iter select_randomly(Iter start, Iter end, RandomGenerator &g);
template<typename Iter>
Iter select_randomly(Iter start, Iter end);