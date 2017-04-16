//
// pure data. anonymous type.
//
def rec1 {
  int i = 1;
  string h = "hello";
}


// same using data typing
// data record of type rec
//
class class1 {
  int i = 1;
  string h = "hello";
}

def rec2 : class1;

//
// simple parameterized with default parameters
//
class class2 <int p1, string p2 = "hello"> {
  int i = p1;
  string h = p2;
}

def rec3 : class2 <5>;



