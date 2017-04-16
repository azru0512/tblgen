//
// examples of let
//

class c1 {
  int i = 1;
}

def rec1 : c1 {
  let i = 2;
}

class c {
  int i = 1;
  int j = 2;
  int k = 3;
}

def rec: c;

let i = 2 in
  def rec2: c;

let i = 3, j=6, k=9 in {
  def rec3: c;
  def rec4: c;
}

let i=100 in {
  def rec5: c;
  let j=200 in {
    def rec6: c;
    let k=300 in
      def rec7: c;
  }
}
