
val cite : ?extra:Latex.t -> Latex.t -> Latex.t

val concat_with_sep : Latex.t list -> Latex.t -> Latex.t

type author = {
  name : Latex.t;
  address : Latex.t;
  email : Latex.t option;
}

val document :
  title:Latex.t ->
  ?short_title:Latex.t ->
  authors:author list ->
  keywords:Latex.t list ->
  acmclass:Latex.t list ->
  abstract:Latex.t ->
  prelude:Latex.t ->
  packages:(Latex.t * Latex.t) list ->
  Latex.t
  -> Latex.t

val ae : Latex.t

val foreign : Latex.t -> Latex.t
val grammardef : Latex.t

type block_line
type block
val block : Latex.t -> Latex.alignment list -> block_line list -> block
val simple_block : Latex.t -> Latex.t -> block
val block_line : ?sep:Latex.size -> ?sync:bool -> Latex.t list -> block_line
val figurerules : label:Latex.label -> caption:Latex.t -> block list -> Latex.t

val tensor : Latex.t
val parr : Latex.t
val one : Latex.t
val bottom : Latex.t
val larrow : Latex.t
val plus : Latex.t
val withc : Latex.t
val top : Latex.t
val zero : Latex.t
val cutrule : Latex.t
val idrule : Latex.t
val iddup : Latex.t
val iota1rule : Latex.t
val iota2rule : Latex.t
val apprule : Latex.t
val recordrule : Latex.t
val pi1rule : Latex.t
val pi2rule : Latex.t
val bangrule : Latex.t
val whynotrule : Latex.t
val positiveshift : Latex.t
val negativeshift : Latex.t

val lambdap : Latex.t -> Latex.t
val cutp : Latex.t -> Latex.t
val mup : Latex.t -> Latex.t

(*** Wrapper around existing commands ***)

val displaymath : Latex.t -> Latex.t

val just_left : Latex.delimiter -> Latex.t -> Latex.t
(* val just_right : Latex.delimiter -> Latex.t -> Latex.t *)
(* val between : Latex.delimiter -> Latex.t -> Latex.t *)

(*** A short module for proof.sty *)
module Infer : sig

  (** A single deduction step *)
  val rule : ?label:Latex.t -> Latex.t list -> Latex.t -> Latex.t
  (** Multiple deduction steps *)
  val derived : ?label:Latex.t -> Latex.t list -> Latex.t -> Latex.t

end

(*** Holes ***)

(* val citation_needed : Latex.t *)
