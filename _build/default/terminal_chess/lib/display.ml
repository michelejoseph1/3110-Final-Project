open Piece
open Board

type piecerow = {
  d1: string;
  c_a: string;
  d2: string;
  c_b: string;
  d3: string;
  c_c: string;
  d4: string;
  c_d: string;
  d5: string;
  c_e: string;
  d6: string;
  c_f: string;
  d7: string;
  c_g: string;
  d8: string;
  c_h: string;
  d9: string
}

type board = {
  l1: string;
  r8: piecerow;
  l2: string;
  r7: piecerow;
  l3: string;
  r6: piecerow;
  l4: string;
  r5: piecerow;
  l5: string;
  r4: piecerow;
  l6: string;
  r3: piecerow;
  l7: string;
  r2: piecerow;
  l8: string;
  r1: piecerow;
  l9: string
}

let div = "  | "
let div_l = " | "
let row8 = {d1 = div_l; c_a = blackrook1.rep; d2 = div; c_b = blackknight1.rep;
d3 = div; c_c = blackbishop1.rep; d4 = div; c_d = blackqueen.rep;
d5 = div; c_e = blackking.rep; d6 = div; c_f = blackbishop2.rep;
d7 = div; c_g = blackknight2.rep; d8 = div; c_h = blackrook2.rep;
d9 = div;  }

let row7 = {d1 = div_l; c_a = blackpawn1.rep; d2 = div; c_b = blackpawn2.rep;
d3 = div; c_c = blackpawn3.rep; d4 = div; c_d = blackpawn4.rep;
d5 = div; c_e = blackpawn5.rep; d6 = div; c_f = blackpawn6.rep;
d7 = div; c_g = blackpawn7.rep; d8 = div; c_h = blackpawn8.rep;
d9 = div;  }

let row6 = {d1 = div_l; c_a = " "; d2 = div; c_b = " ";
d3 = div; c_c = " "; d4 = div; c_d = " ";
d5 = div; c_e = " "; d6 = div; c_f = " ";
d7 = div; c_g = " "; d8 = div; c_h = " ";
d9 = div;  }

let row5 = {d1 = div_l; c_a = " "; d2 = div; c_b = " ";
d3 = div; c_c = " "; d4 = div; c_d = " ";
d5 = div; c_e = " "; d6 = div; c_f = " ";
d7 = div; c_g = " "; d8 = div; c_h = " ";
d9 = div;  }

let row4 = {d1 = div_l; c_a = " "; d2 = div; c_b = " ";
d3 = div; c_c = " "; d4 = div; c_d = " ";
d5 = div; c_e = " "; d6 = div; c_f = " ";
d7 = div; c_g = " "; d8 = div; c_h = " ";
d9 = div;  }

let row3 = {d1 = div_l; c_a = " "; d2 = div; c_b = " ";
d3 = div; c_c = " "; d4 = div; c_d = " ";
d5 = div; c_e = " "; d6 = div; c_f = " ";
d7 = div; c_g = " "; d8 = div; c_h = " ";
d9 = div;  }

let row2 = {d1 = div_l; c_a = whitepawn1.rep; d2 = div; c_b = whitepawn2.rep;
d3 = div; c_c = whitepawn3.rep; d4 = div; c_d = whitepawn4.rep;
d5 = div; c_e = whitepawn5.rep; d6 = div; c_f = whitepawn6.rep;
d7 = div; c_g = whitepawn7.rep; d8 = div; c_h = whitepawn8.rep;
d9 = div;  }

let row1 = {d1 = div_l; c_a = whiterook1.rep; d2 = div; c_b = whiteknight1.rep;
d3 = div; c_c = whitebishop1.rep; d4 = div; c_d = whitequeen.rep;
d5 = div; c_e = whiteking.rep; d6 = div; c_f = whitebishop2.rep;
d7 = div; c_g = whiteknight2.rep; d8 = div; c_h = whiterook2.rep;
d9 = div;  }

let start_board = {
  l1= "-------------------------------------------";
  r8= row8;
  l2= "-------------------------------------------";
  r7= row7;
  l3= "-------------------------------------------";
  r6= row6;
  l4= "-------------------------------------------";
  r5= row5;
  l5= "-------------------------------------------";
  r4= row4;
  l6= "-------------------------------------------";
  r3= row3;
  l7= "-------------------------------------------";
  r2= row2;
  l8= "-------------------------------------------";
  r1= row1;
  l9= "-------------------------------------------";
}

let print_piecerow (elt : piecerow) = begin
  print_string elt.d1;
  print_string elt.c_a;
  print_string elt.d2;
  print_string elt.c_b;
  print_string elt.d3;
  print_string elt.c_c;
  print_string elt.d4;
  print_string elt.c_d;
  print_string elt.d5;
  print_string elt.c_e;
  print_string elt.d6;
  print_string elt.c_f;
  print_string elt.d7;
  print_string elt.c_g;
  print_string elt.d8;
  print_string elt.c_h;
  print_endline elt.d9;
end

 
let print_board (ex : board) = begin
  print_endline ex.l1; 
  print_piecerow ex.r8;
  print_endline ex.l2;
  print_piecerow ex.r7;
  print_endline ex.l3;
  print_piecerow ex.r6;
  print_endline ex.l4;
  print_piecerow ex.r5;
  print_endline ex.l5;
  print_piecerow ex.r4;
  print_endline ex.l6;
  print_piecerow ex.r3;
  print_endline ex.l7;
  print_piecerow ex.r2;
  print_endline ex.l8;
  print_piecerow ex.r1;
  print_endline ex.l9;
end

