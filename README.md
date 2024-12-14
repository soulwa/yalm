# yalm: BLAKE2 end-to-end

this is the code artifact for "Yet Another Last Measurement", my final project for CS7480 at Northeastern

this contains a Jasmin and hacspec implementation of BLAKE2, as well as their respective ssprove variants, and a toolchain so that you can build everything yourself.


recommended software:
- `clang` or `gcc`
- `opam` >= 2.0
- `cargo`
- `make`
- `just`

recommended setup steps:
- you should create 2 opam `switch`es - one at 4.13.0 for working with SSProve and Jasmin, and another at whatever you prefer for hax (i used 5.1.1)
- run `eval $(opam env --switch <your-switch-here> --set-switch)` in your terminal if you're not sure that you have it configured properly
- run `opam repo add coq-released https://coq.inria.fr/opam/released` to add the repository for `mathcomp` to your switch
- run `opam update` for good measure


building Jasmin:
```
cd jasmin
opam install . --jobs=<however many threads you want>
cd ..
```

building assembly from Jasmin:
```
jasminc blake2b.jazz -o blake2b_jazz.s
```

generating Coq (ssprove) from Jasmin:
```
jasminc -coq blake2b.jazz > blake2b_jazz.v
```

running the Jasmin implementation (against C):
```
clang blake2b.c blake2b_jazz.s blake2b_rfc.c 
```
(make sure you have the `blake2b_kat.h` header as well - these are the test vectors)

building ssprove:
- ensure you have jasmin installed, then
```
cd ssprove
opam install .
```

building hax:
- make sure to check out their readme and install needed software
```
cd hax
./setup.sh
```

running the hacspec implementation:
```
cd blake2b-hax
cargo test
```

generating Coq (ssprove) from hacspec:
```
cd blake2b-hax
cargo hax into ssprove
```
