/*
 * Semigroups++
 *
 * This file contains declarations for semirings. 
 *
 */

#ifndef SEMIGROUPS_SEMIRING_H
#define SEMIGROUPS_SEMIRING_H

class Semiring {

  public:

    virtual ~Semiring () {};
    virtual long one  () = 0;
    virtual long zero () = 0;
    virtual long plus (long, long) = 0;
    virtual long prod (long, long) = 0;
};

class MaxPlusSemiring : public Semiring {

  public: 

    MaxPlusSemiring () : Semiring() {}

    long one () {
      return 0;
    }

    long zero () {
      return LONG_MIN;
    }
    
    long prod (long x, long y) {
      if (x == LONG_MIN || y == LONG_MIN) {
        return LONG_MIN;
      }
      return x + y;
    }

    long plus (long x, long y) {
      return std::max(x, y);
    }
};

class MinPlusSemiring : public Semiring {

  public: 

    MinPlusSemiring () : Semiring() {}

    long one () {
      return 0;
    }

    long zero () {
      return LONG_MAX;
    }
    
    long prod (long x, long y) {
      if (x == LONG_MAX || y == LONG_MAX) {
        return LONG_MAX;
      }
      return x + y;
    }

    long plus (long x, long y) {
      return std::min(x, y);
    }
};

#endif
