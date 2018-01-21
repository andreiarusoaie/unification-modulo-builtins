# unification-modulo-builtins
Unification modulo builtins: a prototype in Maude.

This repository contains a simple prototype in Maude for unification
modulo builtins.

## Prerequisites:

* Linux or Mac OS X.
* Maude version alpha115 with CVC4.
* Make sure that typing `maude` in your command line outputs:

```
	:-$ maude
		     \||||||||||||||||||/
		   --- Welcome to Maude ---
		     /||||||||||||||||||\
	   Maude alpha115 built: Aug 11 2017 19:56:55
	    Copyright 1997-2017 SRI International
		   ...
	:-$ 
```

## Usage:

In your command line type:

	:-$ cd src
	:-$ make
	
By default, `make` runs several examples which we use for testing our main functionalities. For additional information about how to use the tool checkout the next section (i.e., **Functionalities**) or send an email to `arusoaie.andrei@info.uaic.ro`.

For a prettier output (you need Perl for this):
	
	:-$ cd src
	:-$ make nice


## Functionalities:

* `op abstraction : Term Qid -> Abstraction .` in `utils.maude`.
  * `abstraction` takes the meta-representation of a term and a module qid and computes the abstraction of a term w.r.t. a set of builtins; for now, these builtins are `Id`, `Int`, and `Boolean`.
* `op unifyAbstractions : Term Term Qid -> Substitutions .` in `constrained-terms.maude`.
  * `unifyAbstractions` takes two meta-representations of a term and a module qid and computes the unifiers of the abstractions of the terms. 
* `op completeSetOfUMBsUnfiltered : Term Term Qid -> UnificationResults .` in `constrained-terms.maude`.
  * `completeSetOfUMBsUnfiltered` computes the set of modulo builtins unifiers of the meta-representations of two terms without filtering the unifiers with unsatisfiable formulas.
* `op completeSetOfUMBs : Term Term Qid -> UnificationResults .` in `constrained-terms.maude`.
  * `completeSetOfUMBs` computes the set of modulo builtins unifiers of the meta-representations of two terms and filters the results using the `filterUnsatUMBs` utility (from `constrained-terms.maude`).
