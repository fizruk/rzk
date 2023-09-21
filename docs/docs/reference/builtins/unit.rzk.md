# Unit type

Since [:octicons-tag-24: v0.5.1][Unit support]

```rzk
#lang rzk-1
```

In the syntax, only `Unit` (the type) and `unit` (the only inhabitant) are provided. Everything else should be available from computation rules.
More specifically, `rzk` takes the uniqueness property of the `Unit` type (see Section 1.5 of the HoTT book[^1]) as the computation rule, meaning that any (well-typed) term of type `Unit` reduces to `unit`.
This means in particular, that induction and uniqueness can be defined very easily:

```rzk
#define ind-Unit
  (C : Unit -> U)
  (C-unit : C unit)
  (x : Unit)
  : C x
  := C-unit

#define uniq-Unit
  (x : Unit)
  : x = unit
  := refl

#define isProp-Unit
  (x y : Unit)
  : x = y
  := refl
```

As a non-trivial example, here is a proof that `Unit` is a Segal type:

```rzk
#section isSegal-Unit

#require-file "docs/docs/_prelude/hott/00-common.rzk.md"
#require-file "docs/docs/_prelude/hott/01-paths.rzk.md"
#require-file "docs/docs/_prelude/hott/02-homotopies.rzk.md"
#require-file "docs/docs/_prelude/hott/03-equivalences.rzk.md"
#require-file "docs/docs/_prelude/hott/06-contractible.rzk.md"

#require-file "docs/docs/_prelude/simplicial-hott/03-simplicial-type-theory.rzk.md"
#require-file "docs/docs/_prelude/simplicial-hott/04-extension-types.rzk.md"
#require-file "docs/docs/_prelude/simplicial-hott/05-segal-types.rzk.md"

#variable extext : ExtExt

#define is-contr-Unit : is-contr Unit
  := (unit, \_ -> refl)

#define is-contr-Δ²→Unit uses (extext)
  : is-contr (Δ² -> Unit)
  := (\_ -> unit, \k -> eq-ext-htpy extext
    (2 * 2) Δ² (\_ -> BOT)
    (\_ -> Unit) (\_ -> recBOT)
    (\_ -> unit) k
    (\_ -> refl)
    )

#define is-segal-Unit uses (extext)
  : is-segal Unit
  := \x y z f g -> is-retract-of-is-contr-is-contr
    (∑ (h : hom Unit x z), hom2 Unit x y z f g h)
    (Δ² -> Unit)
    (\(_, k) -> k, (\k -> (\t -> k (t, t), k), \_ -> refl))
    is-contr-Δ²→Unit

#end isSegal-Unit
```

[Unit support]: https://github.com/rzk-lang/rzk/releases/tag/v0.5.1

[^1]: The Univalent Foundations Program (2013). _Homotopy Type Theory: Univalent Foundations of Mathematics._ <https://homotopytypetheory.org/book>
