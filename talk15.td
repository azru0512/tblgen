// From Target.td
//
// SubRegIndex - Use instances of SubRegIndex to identify subregisters.
class SubRegIndex<list<SubRegIndex> comps = []> {
  string Namespace = "";

  // ComposedOf - A list of two SubRegIndex instances, [A, B].
  // This indicates that this SubRegIndex is the result of composing A and B.
  list<SubRegIndex> ComposedOf = comps;
}

// abbreviated RegisterClass definition
//
class Register<string n> {
  string AsmName = n;   
  list<Register> SubRegs = [];
  list<SubRegIndex> SubRegIndices = [];
}

class RegisterWithSubRegs<string n, list<Register> subregs> : Register<n> {
  let SubRegs = subregs;
}

// from X86RegisterInfo.td
//
def sub_8bit : SubRegIndex; // no subregisters
def sub_8bit_hi: SubRegIndex;

def AL : Register<"al">;
def AH : Register<"ah">;

let SubRegIndices = [sub_8bit, sub_8bit_hi] in {
  def AX : RegisterWithSubRegs<"ax", [AL,AH]>;
}

