
//
// Example of multiple inheritance
//

class c1 {
  int i1 = 1;
}

class c2 {
  int i2 = 2;
}


class c3: c1, c2;

def d1: c1, c2;  

def d2: c3;
