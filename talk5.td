class forward;   // could be empty class or forward declaration

class t <list<forward> parm1> {
  list<forward> f = parm1;
}

class forward<string parm1 = ""> {
  string n = parm1;
}


def one: forward<"cat">;
def two: forward<"dog">;

class empty;
def e1 : empty;
def e2 : empty;

// or is it?
class empty {
  int i;
}

def e3: empty;
