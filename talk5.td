class forward;   // could be empty class or forward declaration

//
// since class forward is used as the template argument type,
// the class forward above is a forward declaration, not an
// empty class.
//
class t <list<forward> parm1> {
  list<forward> f = parm1;
}

class forward<string parm1 = ""> {
  string n = parm1;
}


def one: forward<"cat">;
def two: forward<"dog">;

class empty; // empty class
def e1 : empty; // the *empty* empty class
def e2 : empty;

// or is it?
class empty {
  int i;
}

def e3: empty; // the *non-empty* empty class
