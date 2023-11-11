type bop = 
| Add
| Sub
| Mult
| Div
| Leq
| Geq
| PlusFloat   
| MinusFloat  
| MultFloat   
| DivFloat    
| GeqFloat    


(** [typ] represents the type of an expression. *)
type typ =
  | TInt
  | TBool
  | TFloat

type expr = 
| Int of int
| Bool of bool
| Float of float   
| Var of string
| Binop of binop * expr * expr
| Let of string * typ * expr * expr
| If of expr * expr * expr
