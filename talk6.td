class node;
def na : node;
def nb : node;
def nc : node;

def prim_types {
  bit b;
  bit t = 1;
  bit f = 0;
  int i;
  int j = 0b1100;  // binary representation 
  int k = 0377;    // octal represetntation
  int l = 0xface; 
  bits<3> i3 = 0b110;
  bits<4> j4 = {1, 0, 1, 1};
  string s1;
  string s2 = "hello";

  list<int> li = [1, 2, 3, 4];
  list<string> strings = ["house", "road", "basement", "shed"];
  list<node> ln = [na, nb, nc];

  dag d1 = (na 1, 2 );
  dag d2 = (na (nb 1, 2), nc, 4);  
  code c;
  // similar to python """
  // multiline string literal as code
  code c_hello_world = [{
#include <stdio.h>    
int main() {
    printf("hello world \n");
}
  }] ;

  // single line string literal as code
  code c_return_0 = " #include <stdio.h>    int main() { return 0; } " ;

  // support single line string literal only, doesn't support multiline
  // string literal. i.e.,
  //
  //   """
  //   this is multiline
  //     string literal
  //   """
  string s_code = "this is single line string literal";
}

