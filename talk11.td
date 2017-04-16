//
//
class Instruction<string n> {
  string variant = n;
}

multiclass basic_r {
  def rr: Instruction< "rr">;
  def rm: Instruction<"rm">;
}

defm ADD : basic_r;
defm SUB : basic_r;

/* result from table gen

------------- Classes -----------------
class Instruction<string Instruction:n = ?> {
  string variant = Instruction:n;
  string NAME = ?;
}
------------- Defs -----------------
def ADDrm {	// Instruction rm
  string variant = "rm";
  string NAME = ?;
}
def ADDrr {	// Instruction rr
  string variant = "rr";
  string NAME = ?;
}
def SUBrm {	// Instruction rm
  string variant = "rm";
  string NAME = ?;
}
def SUBrr {	// Instruction rr
  string variant = "rr";
  string NAME = ?;
}



*/

