//
// bits. very useful for encoding.
//
def basic_bits {
  bits<5> x = 0b11001;

  bits<5> y = {1, 0, 1, 0, 0};

  bits<3> z = y{0-2};

  bits<10> zz;

  let zz{0-4} = x;

  let zz{5-9} = y;

  bits<10> zzz;

  let zzz{4-0} = x;

  let zzz{9-5} = y;

  bit b = 1;

  bits<5> zzzz;

  let zzzz{0} = b;

  let zzzz{4-1} = 5;

  bit b1 = zzzz{0};


}