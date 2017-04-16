

class Instruction<string n> {
  string variant = n;
}

multiclass basic_r {
  def rr: Instruction< "rr">;
  def rm: Instruction<"rm">;
}



multiclass basic_s {
  defm SS : basic_r;
  defm SD : basic_r;
}

defm ADD2 : basic_s;

/* results

------------- Classes -----------------
class Instruction<string Instruction:n = ?> {
  string variant = Instruction:n;
  string NAME = ?;
}
------------- Defs -----------------
def ADD2SDrm {	// Instruction rm SDrm
  string variant = "rm";
  string NAME = ?;
}
def ADD2SDrr {	// Instruction rr SDrr
  string variant = "rr";
  string NAME = ?;
}
def ADD2SSrm {	// Instruction rm SSrm
  string variant = "rm";
  string NAME = ?;
}
def ADD2SSrr {	// Instruction rr SSrr
  string variant = "rr";
  string NAME = ?;
}

*/