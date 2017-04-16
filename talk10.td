// struct c1;

// struct c1 {
//  struct c1 *list;
// };

// struct c2 {
//     struct c2 *list;
// };


//
// used for subregisters
//
class c1;

class c1 <list<c1> param = []> {
  list<c1> l = param;
}

class c2<list<c2> param  = []> {
  list<c2> l = param;
}



