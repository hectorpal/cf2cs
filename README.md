# cf2cs: Conformant planning to Classical planning

run `./cf2cs` for help

If just want to run it for solving conformant planning problems, please use in conjuntion with [translator](https://github.com/hectorpal/translator-conformant), a conformant planner.

If you make changes to this code, just compile and copy the new `cf2cs` to `$TRANSLATOR_HOME/translator`. `Translator` should available in the same place you downloaded this file.

cf2cs assumes $TRANSLATOR_HOME is well set and look for `relsat`, `c2d_220` and `models` there.

- relsat is a SAT solver available here: <http://www.bayardo.org/resources.html>
- c2d_220 is a compiler fron CNF to d-DNNF available here: <http://reasoning.cs.ucla.edu/c2d>

Some third-party software was included:

- zChaff, a SAT solver
- hmetis

Copyrights belong to their respective owners.

Compiling:

- Requires (tested under) Ocaml 3.10.0
- Just run make all to obtain two executables:

  - cf2cs
  - prime-impl: for transforming a CNF into Prime Implicate form

Changing the source code:

- Parsing and convertion to prime implicate form is in C++.
- Anything else is in cf2cs.ml, in OCaml. (Shame on me for having one monolitic file).

Even if you are not familiar with OCaml, making changes is not so difficult. Internal names tend to coincide with JAIR 2009.

Please contact me at hectorpal@gmail.com for any comments or bugs.

May 2009
