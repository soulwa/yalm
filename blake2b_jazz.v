Set Warnings "-notation-overridden,-ambiguous-paths".
From mathcomp Require Import all_ssreflect all_algebra reals distr realsum
  fingroup.fingroup solvable.cyclic prime ssrnat ssreflect ssrfun ssrbool
  ssrnum eqtype choice seq.
Set Warnings "notation-overridden,ambiguous-paths".

Require Import List.
Set Warnings "-notation-overridden".
From Jasmin Require Import expr.
Set Warnings "notation-overridden".
From Jasmin Require Import x86_instr_decl x86_extra.
From JasminSSProve Require Import jasmin_translate.
From Crypt Require Import Prelude Package.

Import ListNotations.
Local Open Scope string.




Definition ssprove_jasmin_prog : uprog.
Proof.
  refine {| p_funcs :=
 [ ( (* blake2b_jazz *) xH,
     {| f_info := FunInfo.witness
      ; f_tyin :=
          [(sword U64); (sword U64); (sword U64); (sword U64); (sword U64);
            (sword U64)]
      ; f_params :=
          [{| v_var := {| vtype := (sword U64)
                        ; vname := "out.290"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "outlen.291"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "key.292"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "keylen.293"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "in.294"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "inlen.295"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var := {| vtype := (sword U64)
                                ; vname := "r.296"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cif
                (Papp2 (Oeq (Op_w U64))
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := (sword U64)
                                     ; vname := "outlen.291"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |})
                   (Papp1 (Oword_of_int U64) (Pconst (Z0))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Lvar
                        {| v_var :=
                             {| vtype := (sword U64)
                              ; vname := "r.296"  |}
                         ; v_info := dummy_var_info |})
                     AT_none ((sword U64))
                     ((Papp1 (Oword_of_int U64)
                         (Papp1 (Oneg Op_int) (Pconst (Zpos (xH)))))))]
                [MkI InstrInfo.witness
                  (Cif
                     (Papp2 (Ogt (Cmp_w Unsigned U64))
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := (sword U64)
                                          ; vname := "outlen.291"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |})
                        (Papp1 (Oword_of_int U64)
                           (Pconst (Zpos (xO (xO (xO (xO (xO (xO xH))))))))))
                     [MkI InstrInfo.witness
                       (Cassgn
                          (Lvar
                             {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "r.296"  |}
                              ; v_info := dummy_var_info |})
                          AT_none ((sword U64))
                          ((Papp1 (Oword_of_int U64)
                              (Papp1 (Oneg Op_int) (Pconst (Zpos (xH)))))))]
                     [MkI InstrInfo.witness
                       (Cif
                          (Papp2 (Ogt (Cmp_w Unsigned U64))
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype := (sword U64)
                                               ; vname := "keylen.293"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |})
                             (Papp1 (Oword_of_int U64)
                                (Pconst
                                   (Zpos (xO (xO (xO (xO (xO (xO xH))))))))))
                          [MkI InstrInfo.witness
                            (Cassgn
                               (Lvar
                                  {| v_var :=
                                       {| vtype := (sword U64)
                                        ; vname := "r.296"  |}
                                   ; v_info := dummy_var_info |})
                               AT_none ((sword U64))
                               ((Papp1 (Oword_of_int U64)
                                   (Papp1 (Oneg Op_int) (Pconst (Zpos (xH)))))))]
                          [MkI InstrInfo.witness
                            (Ccall InlineFun
                               [Lvar
                                  {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                        ; vname := "b.297"  |}
                                   ; v_info := dummy_var_info |};
                                 Lvar
                                   {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "c.298"  |}
                                    ; v_info := dummy_var_info |};
                                 Lvar
                                   {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                         ; vname := "h.299"  |}
                                    ; v_info := dummy_var_info |};
                                 Lvar
                                   {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO xH)))))
                                         ; vname := "t.300"  |}
                                    ; v_info := dummy_var_info |}]
                               (xO (xO xH))
                               [(Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := (sword U64)
                                                  ; vname := "outlen.291"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |});
                                 (Pvar
                                    {| gv := {| v_var :=
                                                  {| vtype := (sword U64)
                                                   ; vname := "key.292"  |}
                                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                                 (Pvar
                                    {| gv := {| v_var :=
                                                  {| vtype := (sword U64)
                                                   ; vname := "keylen.293"  |}
                                              ; v_info := dummy_var_info |} ; gs := Slocal |})]);
                            MkI InstrInfo.witness
                             (Ccall InlineFun
                                [Lvar
                                   {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "b.297"  |}
                                    ; v_info := dummy_var_info |};
                                  Lvar
                                    {| v_var :=
                                         {| vtype := (sword U64)
                                          ; vname := "c.298"  |}
                                     ; v_info := dummy_var_info |};
                                  Lvar
                                    {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                          ; vname := "h.299"  |}
                                     ; v_info := dummy_var_info |};
                                  Lvar
                                    {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO xH)))))
                                          ; vname := "t.300"  |}
                                     ; v_info := dummy_var_info |}]
                                (xI xH)
                                [(Pvar
                                    {| gv := {| v_var :=
                                                  {| vtype :=
                                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                                   ; vname := "b.297"  |}
                                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "c.298"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype :=
                                                        (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                                    ; vname := "h.299"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype :=
                                                        (sarr (xO (xO (xO (xO xH)))))
                                                    ; vname := "t.300"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "in.294"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "inlen.295"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |})]);
                            MkI InstrInfo.witness
                             (Ccall InlineFun [] (xO xH)
                                [(Pvar
                                    {| gv := {| v_var :=
                                                  {| vtype :=
                                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                                   ; vname := "b.297"  |}
                                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "c.298"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype :=
                                                        (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                                    ; vname := "h.299"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype :=
                                                        (sarr (xO (xO (xO (xO xH)))))
                                                    ; vname := "t.300"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "out.290"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                                  (Pvar
                                     {| gv := {| v_var :=
                                                   {| vtype := (sword U64)
                                                    ; vname := "outlen.291"  |}
                                               ; v_info := dummy_var_info |} ; gs := Slocal |})])])])]) ]
      ; f_tyout := [(sword U64)]
      ; f_res :=
          [{| v_var := {| vtype := (sword U64)
                        ; vname := "r.296"  |}
            ; v_info := dummy_var_info |}]
      ; f_extra := tt
      ; |} )
 ; ( (* blake2b_final *) xO xH,
     {| f_info := FunInfo.witness
      ; f_tyin :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH)))))))); (sword U64);
            (sarr (xO (xO (xO (xO (xO (xO xH)))))));
            (sarr (xO (xO (xO (xO xH))))); (sword U64); (sword U64)]
      ; f_params :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "b.301"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "c.302"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                  ; vname := "h.303"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO xH)))))
                  ; vname := "t.304"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "out.305"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "outlen.306"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype := (sarr (xO (xO (xO (xO xH)))))
                         ; vname := "t.304"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Z0)))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO xH)))))
                                      ; vname := "t.304"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pconst (Z0)))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "c.302"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cif
                (Papp2 (Olt ((Cmp_w Unsigned U64)))
                   (Pget AAscale U64
                      {| gv := {| v_var :=
                                    {| vtype := (sarr (xO (xO (xO (xO xH)))))
                                     ; vname := "t.304"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}
                      (Pconst (Z0)))
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := (sword U64)
                                     ; vname := "c.302"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U64
                        {| v_var :=
                             {| vtype := (sarr (xO (xO (xO (xO xH)))))
                              ; vname := "t.304"  |}
                         ; v_info := dummy_var_info |}
                        (Pconst (Zpos (xH))))
                     AT_none ((sword U64))
                     ((Papp2 (Oadd (Op_w U64))
                         (Pget AAscale U64
                            {| gv := {| v_var :=
                                          {| vtype :=
                                               (sarr (xO (xO (xO (xO xH)))))
                                           ; vname := "t.304"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}
                            (Pconst (Zpos (xH))))
                         (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))))]
                []);
            MkI InstrInfo.witness
             (Cwhile NoAlign []
                ((Papp2 (Olt (Cmp_w Unsigned U64))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "c.302"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Papp1 (Oword_of_int U64)
                       (Pconst (Zpos (xO (xO (xO (xO (xO (xO (xO xH))))))))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U8
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "b.301"  |}
                         ; v_info := dummy_var_info |}
                        (Papp1 (Oint_of_word U64)
                           (Pvar
                              {| gv := {| v_var :=
                                            {| vtype := (sword U64)
                                             ; vname := "c.302"  |}
                                        ; v_info := dummy_var_info |} ; gs := Slocal |})))
                     AT_none ((sword U8))
                     ((Papp1 (Oword_of_int U8) (Pconst (Z0)))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "c.302"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oadd (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "c.302"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))))]);
            MkI InstrInfo.witness
             (Ccall InlineFun
                [Lvar
                   {| v_var :=
                        {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                         ; vname := "h.303"  |}
                    ; v_info := dummy_var_info |}]
                (xI (xO xH))
                [(Pvar
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "b.301"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Pvar
                     {| gv := {| v_var :=
                                   {| vtype :=
                                        (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                    ; vname := "h.303"  |}
                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Pvar
                     {| gv := {| v_var :=
                                   {| vtype := (sarr (xO (xO (xO (xO xH)))))
                                    ; vname := "t.304"  |}
                               ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Papp1 (Oword_of_int U8) (Pconst (Zpos (xH))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var := {| vtype := (sword U64)
                                ; vname := "i.307"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cwhile NoAlign []
                ((Papp2 (Olt (Cmp_w Unsigned U64))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "i.307"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "outlen.306"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Lvar
                        {| v_var :=
                             {| vtype := (sword U64)
                              ; vname := "h_idx.308"  |}
                         ; v_info := dummy_var_info |})
                     AT_none ((sword U64))
                     ((Pvar
                         {| gv := {| v_var :=
                                       {| vtype := (sword U64)
                                        ; vname := "i.307"  |}
                                   ; v_info := dummy_var_info |} ; gs := Slocal |})));
                  MkI InstrInfo.witness
                   (Copn
                      [Lnone dummy_var_info sbool;
                        Lnone dummy_var_info sbool;
                        Lvar
                          {| v_var :=
                               {| vtype := (sword U64)
                                ; vname := "h_idx.308"  |}
                           ; v_info := dummy_var_info |}]
                      AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "h_idx.308"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Papp1 (Oword_of_int U8) (Pconst (Zpos (xI xH))))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "h_rhs.309"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "i.307"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |})));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "h_rhs.309"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oland U64)
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "h_rhs.309"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64)
                             (Pconst (Zpos (xI (xI xH))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "h_rhs.309"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Omul (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "h_rhs.309"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64)
                             (Pconst (Zpos (xO (xO (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "h_lhs.310"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                         ; vname := "h.303"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}
                          (Papp1 (Oint_of_word U64)
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype := (sword U64)
                                               ; vname := "h_idx.308"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |})))));
                  MkI InstrInfo.witness
                   (Copn
                      [Lnone dummy_var_info sbool;
                        Lnone dummy_var_info sbool;
                        Lvar
                          {| v_var :=
                               {| vtype := (sword U64)
                                ; vname := "h_lhs.310"  |}
                           ; v_info := dummy_var_info |}]
                      AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "h_lhs.310"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := (sword U64)
                                          ; vname := "h_rhs.309"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |})]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "h_lhs.310"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oland U64)
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "h_lhs.310"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64)
                             (Pconst
                                (Zpos (xI (xI (xI (xI (xI (xI (xI xH)))))))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lmem U64
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "out.305"  |}
                          ; v_info := dummy_var_info |}
                         (Pvar
                            {| gv := {| v_var :=
                                          {| vtype := (sword U64)
                                           ; vname := "i.307"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}))
                      AT_none ((sword U64))
                      ((Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "h_lhs.310"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |})));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "i.307"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oadd (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "i.307"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))))]) ]
      ; f_tyout := []
      ; f_res := []
      ; f_extra := tt
      ; |} )
 ; ( (* blake2b_init *) xO (xO xH),
     {| f_info := FunInfo.witness
      ; f_tyin := [(sword U64); (sword U64); (sword U64)]
      ; f_params :=
          [{| v_var := {| vtype := (sword U64)
                        ; vname := "outlen.311"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "key.312"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "keylen.313"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cfor
                ({| v_var := {| vtype := sint
                              ; vname := "i.318"  |}
                  ; v_info := dummy_var_info |})
                ((UpTo, (Pconst (Z0))), (Pconst (Zpos (xO (xO (xO xH))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U64
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                              ; vname := "h.316"  |}
                         ; v_info := dummy_var_info |}
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := sint
                                          ; vname := "i.318"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}))
                     AT_none ((sword U64))
                     ((Pget AAscale U64
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                        ; vname := "blake2b_iv.288"  |}
                                   ; v_info := dummy_var_info |} ; gs := Sglob |}
                         (Pvar
                            {| gv := {| v_var :=
                                          {| vtype := sint
                                           ; vname := "i.318"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "h0_scratch.319"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "keylen.313"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |})));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "h0_scratch.319"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp2 (Olsl (Op_w U64))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "h0_scratch.319"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Papp1 (Oword_of_int U8)
                       (Pconst (Zpos (xO (xO (xO xH)))))))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "h0_scratch.319"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "h0_scratch.319"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Papp1 (Oword_of_int U64)
                       (Pconst
                          (Zpos (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI (xO (xO (xO (xO (xO (xO (xO xH))))))))))))))))))))))))))))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "h0_scratch.319"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "h0_scratch.319"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "outlen.311"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                         ; vname := "h.316"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Z0)))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                      ; vname := "h.316"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pconst (Z0)))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "h0_scratch.319"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype := (sarr (xO (xO (xO (xO xH)))))
                         ; vname := "t.317"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Z0)))
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype := (sarr (xO (xO (xO (xO xH)))))
                         ; vname := "t.317"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Zpos (xH))))
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var := {| vtype := (sword U64)
                                ; vname := "c.315"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "buf_idx.320"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "keylen.313"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |})));
            MkI InstrInfo.witness
             (Cwhile NoAlign []
                ((Papp2 (Olt (Cmp_w Unsigned U64))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "buf_idx.320"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Papp1 (Oword_of_int U64)
                       (Pconst (Zpos (xO (xO (xO (xO (xO (xO (xO xH))))))))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U8
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "b.314"  |}
                         ; v_info := dummy_var_info |}
                        (Papp1 (Oint_of_word U64)
                           (Pvar
                              {| gv := {| v_var :=
                                            {| vtype := (sword U64)
                                             ; vname := "buf_idx.320"  |}
                                        ; v_info := dummy_var_info |} ; gs := Slocal |})))
                     AT_none ((sword U8))
                     ((Papp1 (Oword_of_int U8) (Pconst (Z0)))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "buf_idx.320"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oadd (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "buf_idx.320"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))))]);
            MkI InstrInfo.witness
             (Cif
                (Papp2 (Ogt (Cmp_w Unsigned U64))
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := (sword U64)
                                     ; vname := "keylen.313"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |})
                   (Papp1 (Oword_of_int U64) (Pconst (Z0))))
                [MkI InstrInfo.witness
                  (Ccall InlineFun
                     [Lvar
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "b.314"  |}
                         ; v_info := dummy_var_info |};
                       Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "c.315"  |}
                          ; v_info := dummy_var_info |};
                       Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                               ; vname := "h.316"  |}
                          ; v_info := dummy_var_info |};
                       Lvar
                         {| v_var :=
                              {| vtype := (sarr (xO (xO (xO (xO xH)))))
                               ; vname := "t.317"  |}
                          ; v_info := dummy_var_info |}]
                     (xI xH)
                     [(Pvar
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                        ; vname := "b.314"  |}
                                   ; v_info := dummy_var_info |} ; gs := Slocal |});
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "c.315"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                         ; vname := "h.316"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO xH)))))
                                         ; vname := "t.317"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "key.312"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := (sword U64)
                                         ; vname := "keylen.313"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |})]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "c.315"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp1 (Oword_of_int U64)
                          (Pconst
                             (Zpos (xO (xO (xO (xO (xO (xO (xO xH))))))))))))]
                []) ]
      ; f_tyout :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH)))))))); (sword U64);
            (sarr (xO (xO (xO (xO (xO (xO xH)))))));
            (sarr (xO (xO (xO (xO xH)))))]
      ; f_res :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "b.314"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "c.315"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                  ; vname := "h.316"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO xH)))))
                  ; vname := "t.317"  |}
             ; v_info := dummy_var_info |}]
      ; f_extra := tt
      ; |} )
 ; ( (* blake2b_update *) xI xH,
     {| f_info := FunInfo.witness
      ; f_tyin :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH)))))))); (sword U64);
            (sarr (xO (xO (xO (xO (xO (xO xH)))))));
            (sarr (xO (xO (xO (xO xH))))); (sword U64); (sword U64)]
      ; f_params :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "b.321"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "c.322"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                  ; vname := "h.323"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO xH)))))
                  ; vname := "t.324"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "in.325"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "inlen.326"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var := {| vtype := (sword U64)
                                ; vname := "i.327"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Papp1 (Oword_of_int U64) (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cwhile NoAlign []
                ((Papp2 (Olt (Cmp_w Unsigned U64))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "i.327"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "inlen.326"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |})))
                [MkI InstrInfo.witness
                  (Cif
                     (Papp2 (Oeq (Op_w U64))
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := (sword U64)
                                          ; vname := "c.322"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |})
                        (Papp1 (Oword_of_int U64)
                           (Pconst
                              (Zpos (xO (xO (xO (xO (xO (xO (xO xH)))))))))))
                     [MkI InstrInfo.witness
                       (Cassgn
                          (Laset AAscale U64
                             {| v_var :=
                                  {| vtype := (sarr (xO (xO (xO (xO xH)))))
                                   ; vname := "t.324"  |}
                              ; v_info := dummy_var_info |}
                             (Pconst (Z0)))
                          AT_none ((sword U64))
                          ((Papp2 (Oadd (Op_w U64))
                              (Pget AAscale U64
                                 {| gv := {| v_var :=
                                               {| vtype :=
                                                    (sarr (xO (xO (xO (xO xH)))))
                                                ; vname := "t.324"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |}
                                 (Pconst (Z0)))
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "c.322"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |}))));
                       MkI InstrInfo.witness
                        (Cif
                           (Papp2 (Olt (Cmp_w Unsigned U64))
                              (Pget AAscale U64
                                 {| gv := {| v_var :=
                                               {| vtype :=
                                                    (sarr (xO (xO (xO (xO xH)))))
                                                ; vname := "t.324"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |}
                                 (Pconst (Z0)))
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "c.322"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |}))
                           [MkI InstrInfo.witness
                             (Cassgn
                                (Laset AAscale U64
                                   {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO xH)))))
                                         ; vname := "t.324"  |}
                                    ; v_info := dummy_var_info |}
                                   (Pconst (Zpos (xH))))
                                AT_none ((sword U64))
                                ((Papp2 (Oadd (Op_w U64))
                                    (Pget AAscale U64
                                       {| gv := {| v_var :=
                                                     {| vtype :=
                                                          (sarr (xO (xO (xO (xO xH)))))
                                                      ; vname := "t.324"  |}
                                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                                       (Pconst (Zpos (xH))))
                                    (Papp1 (Oword_of_int U64)
                                       (Pconst (Zpos (xH)))))))]
                           []);
                       MkI InstrInfo.witness
                        (Ccall InlineFun
                           [Lvar
                              {| v_var :=
                                   {| vtype :=
                                        (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                    ; vname := "h.323"  |}
                               ; v_info := dummy_var_info |}]
                           (xI (xO xH))
                           [(Pvar
                               {| gv := {| v_var :=
                                             {| vtype :=
                                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                              ; vname := "b.321"  |}
                                         ; v_info := dummy_var_info |} ; gs := Slocal |});
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype :=
                                                   (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                               ; vname := "h.323"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |});
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype :=
                                                   (sarr (xO (xO (xO (xO xH)))))
                                               ; vname := "t.324"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |});
                             (Papp1 (Oword_of_int U8) (Pconst (Z0)))]);
                       MkI InstrInfo.witness
                        (Cassgn
                           (Lvar
                              {| v_var :=
                                   {| vtype := (sword U64)
                                    ; vname := "c.322"  |}
                               ; v_info := dummy_var_info |})
                           AT_none ((sword U64))
                           ((Papp1 (Oword_of_int U64) (Pconst (Z0)))))]
                     []);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Laset AAscale U8
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "b.321"  |}
                          ; v_info := dummy_var_info |}
                         (Papp1 (Oint_of_word U64)
                            (Pvar
                               {| gv := {| v_var :=
                                             {| vtype := (sword U64)
                                              ; vname := "c.322"  |}
                                         ; v_info := dummy_var_info |} ; gs := Slocal |})))
                      AT_none ((sword U8))
                      ((Pload U8
                          {| v_var :=
                               {| vtype := (sword U64)
                                ; vname := "in.325"  |}
                           ; v_info := dummy_var_info |}
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "i.327"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "c.322"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oadd (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "c.322"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "i.327"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Papp2 (Oadd (Op_w U64))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "i.327"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |})
                          (Papp1 (Oword_of_int U64) (Pconst (Zpos (xH)))))))]) ]
      ; f_tyout :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH)))))))); (sword U64);
            (sarr (xO (xO (xO (xO (xO (xO xH)))))));
            (sarr (xO (xO (xO (xO xH)))))]
      ; f_res :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "b.321"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "c.322"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                  ; vname := "h.323"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO xH)))))
                  ; vname := "t.324"  |}
             ; v_info := dummy_var_info |}]
      ; f_extra := tt
      ; |} )
 ; ( (* blake2b_compress *) xI (xO xH),
     {| f_info := FunInfo.witness
      ; f_tyin :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH))))))));
            (sarr (xO (xO (xO (xO (xO (xO xH)))))));
            (sarr (xO (xO (xO (xO xH))))); (sword U8)]
      ; f_params :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "b.328"  |}
            ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                  ; vname := "h.329"  |}
             ; v_info := dummy_var_info |};
            {| v_var :=
                 {| vtype := (sarr (xO (xO (xO (xO xH)))))
                  ; vname := "t.330"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U8)
                         ; vname := "last.331"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "t0.332"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype := (sarr (xO (xO (xO (xO xH)))))
                                   ; vname := "t.330"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pconst (Z0)))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "t1.333"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype := (sarr (xO (xO (xO (xO xH)))))
                                   ; vname := "t.330"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pconst (Zpos (xH))))));
            MkI InstrInfo.witness
             (Cfor
                ({| v_var := {| vtype := sint
                              ; vname := "i.334"  |}
                  ; v_info := dummy_var_info |})
                ((UpTo, (Pconst (Z0))), (Pconst (Zpos (xO (xO (xO xH))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U64
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "v.335"  |}
                         ; v_info := dummy_var_info |}
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := sint
                                          ; vname := "i.334"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}))
                     AT_none ((sword U64))
                     ((Pget AAscale U64
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                        ; vname := "h.329"  |}
                                   ; v_info := dummy_var_info |} ; gs := Slocal |}
                         (Pvar
                            {| gv := {| v_var :=
                                          {| vtype := sint
                                           ; vname := "i.334"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Laset AAscale U64
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}
                         (Papp2 (Oadd Op_int)
                            (Pvar
                               {| gv := {| v_var :=
                                             {| vtype := sint
                                              ; vname := "i.334"  |}
                                         ; v_info := dummy_var_info |} ; gs := Slocal |})
                            (Pconst (Zpos (xO (xO (xO xH)))))))
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                         ; vname := "blake2b_iv.288"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := sint
                                            ; vname := "i.334"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}))))]);
            MkI InstrInfo.witness
             (Cfor
                ({| v_var := {| vtype := sint
                              ; vname := "i.334"  |}
                  ; v_info := dummy_var_info |})
                ((UpTo, (Pconst (Z0))),
                  (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U64
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "m.336"  |}
                         ; v_info := dummy_var_info |}
                        (Pvar
                           {| gv := {| v_var :=
                                         {| vtype := sint
                                          ; vname := "i.334"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}))
                     AT_none ((sword U64))
                     ((Pget AAdirect U64
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                        ; vname := "b.328"  |}
                                   ; v_info := dummy_var_info |} ; gs := Slocal |}
                         (Papp2 (Omul Op_int)
                            (Pconst (Zpos (xO (xO (xO xH)))))
                            (Pvar
                               {| gv := {| v_var :=
                                             {| vtype := sint
                                              ; vname := "i.334"  |}
                                         ; v_info := dummy_var_info |} ; gs := Slocal |})))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.335"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Zpos (xO (xO (xI xH))))))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.335"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pconst (Zpos (xO (xO (xI xH))))))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "t0.332"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.335"  |}
                    ; v_info := dummy_var_info |}
                   (Pconst (Zpos (xI (xO (xI xH))))))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.335"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pconst (Zpos (xI (xO (xI xH))))))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "t1.333"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cif
                (Papp2 (Oeq (Op_w U8))
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := (sword U8)
                                     ; vname := "last.331"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |})
                   (Papp1 (Oword_of_int U8) (Pconst (Zpos (xH)))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Laset AAscale U64
                        {| v_var :=
                             {| vtype :=
                                  (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                              ; vname := "v.335"  |}
                         ; v_info := dummy_var_info |}
                        (Pconst (Zpos (xO (xI (xI xH))))))
                     AT_none ((sword U64))
                     ((Papp2 (Olxor U64)
                         (Pget AAscale U64
                            {| gv := {| v_var :=
                                          {| vtype :=
                                               (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                           ; vname := "v.335"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}
                            (Pconst (Zpos (xO (xI (xI xH))))))
                         (Papp1 (Oword_of_int U64)
                            (Pconst
                               (Zpos (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI (xI xH)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))]
                []);
            MkI InstrInfo.witness
             (Cfor
                ({| v_var := {| vtype := sint
                              ; vname := "i.334"  |}
                  ; v_info := dummy_var_info |})
                ((UpTo, (Pconst (Z0))), (Pconst (Zpos (xO (xO (xI xH))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Lvar
                        {| v_var :=
                             {| vtype := (sword U64)
                              ; vname := "m_idx_1.337"  |}
                         ; v_info := dummy_var_info |})
                     AT_none ((sword U64))
                     ((Pget AAscale U64
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                        ; vname := "sigma.289"  |}
                                   ; v_info := dummy_var_info |} ; gs := Sglob |}
                         (Papp2 (Oadd Op_int)
                            (Papp2 (Omul Op_int)
                               (Pvar
                                  {| gv := {| v_var :=
                                                {| vtype := sint
                                                 ; vname := "i.334"  |}
                                            ; v_info := dummy_var_info |} ; gs := Slocal |})
                               (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                            (Pconst (Z0))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xH)))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Z0)); (Pconst (Zpos (xO (xO xH))));
                        (Pconst (Zpos (xO (xO (xO xH)))));
                        (Pconst (Zpos (xO (xO (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO xH)))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI xH)))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xH))); (Pconst (Zpos (xI (xO xH))));
                        (Pconst (Zpos (xI (xO (xO xH)))));
                        (Pconst (Zpos (xI (xO (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xO xH))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xO xH))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xO xH)));
                        (Pconst (Zpos (xO (xI xH))));
                        (Pconst (Zpos (xO (xI (xO xH)))));
                        (Pconst (Zpos (xO (xI (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xI xH))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xI xH))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xI xH)));
                        (Pconst (Zpos (xI (xI xH))));
                        (Pconst (Zpos (xI (xI (xO xH)))));
                        (Pconst (Zpos (xI (xI (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xO (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xO (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Z0)); (Pconst (Zpos (xI (xO xH))));
                        (Pconst (Zpos (xO (xI (xO xH)))));
                        (Pconst (Zpos (xI (xI (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xI (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xI (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xH))); (Pconst (Zpos (xO (xI xH))));
                        (Pconst (Zpos (xI (xI (xO xH)))));
                        (Pconst (Zpos (xO (xO (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xO (xI xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xO (xI xH)))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xO xH)));
                        (Pconst (Zpos (xI (xI xH))));
                        (Pconst (Zpos (xO (xO (xO xH)))));
                        (Pconst (Zpos (xI (xO (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))]);
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_1.337"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xO (xI (xI xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "m_idx_2.338"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                                         ; vname := "sigma.289"  |}
                                    ; v_info := dummy_var_info |} ; gs := Sglob |}
                          (Papp2 (Oadd Op_int)
                             (Papp2 (Omul Op_int)
                                (Pvar
                                   {| gv := {| v_var :=
                                                 {| vtype := sint
                                                  ; vname := "i.334"  |}
                                             ; v_info := dummy_var_info |} ; gs := Slocal |})
                                (Pconst (Zpos (xO (xO (xO (xO xH)))))))
                             (Pconst (Zpos (xI (xI (xI xH)))))))));
                  MkI InstrInfo.witness
                   (Ccall InlineFun
                      [Lvar
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}]
                      (xO (xI xH))
                      [(Pvar
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |});
                        (Pconst (Zpos (xI xH)));
                        (Pconst (Zpos (xO (xO xH))));
                        (Pconst (Zpos (xI (xO (xO xH)))));
                        (Pconst (Zpos (xO (xI (xI xH)))));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_1.337"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})));
                        (Pget AAscale U64
                           {| gv := {| v_var :=
                                         {| vtype :=
                                              (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                          ; vname := "m.336"  |}
                                     ; v_info := dummy_var_info |} ; gs := Slocal |}
                           (Papp1 (Oint_of_word U64)
                              (Pvar
                                 {| gv := {| v_var :=
                                               {| vtype := (sword U64)
                                                ; vname := "m_idx_2.338"  |}
                                           ; v_info := dummy_var_info |} ; gs := Slocal |})))])]);
            MkI InstrInfo.witness
             (Cfor
                ({| v_var := {| vtype := sint
                              ; vname := "i.334"  |}
                  ; v_info := dummy_var_info |})
                ((UpTo, (Pconst (Z0))), (Pconst (Zpos (xO (xO (xO xH))))))
                [MkI InstrInfo.witness
                  (Cassgn
                     (Lvar
                        {| v_var :=
                             {| vtype := (sword U64)
                              ; vname := "v_temp.339"  |}
                         ; v_info := dummy_var_info |})
                     AT_none ((sword U64))
                     ((Pget AAscale U64
                         {| gv := {| v_var :=
                                       {| vtype :=
                                            (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                        ; vname := "v.335"  |}
                                   ; v_info := dummy_var_info |} ; gs := Slocal |}
                         (Papp2 (Oadd Op_int)
                            (Pvar
                               {| gv := {| v_var :=
                                             {| vtype := sint
                                              ; vname := "i.334"  |}
                                         ; v_info := dummy_var_info |} ; gs := Slocal |})
                            (Pconst (Zpos (xO (xO (xO xH)))))))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Laset AAscale U64
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                               ; vname := "v.335"  |}
                          ; v_info := dummy_var_info |}
                         (Pvar
                            {| gv := {| v_var :=
                                          {| vtype := sint
                                           ; vname := "i.334"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}))
                      AT_none ((sword U64))
                      ((Papp2 (Olxor U64)
                          (Pget AAscale U64
                             {| gv := {| v_var :=
                                           {| vtype :=
                                                (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                            ; vname := "v.335"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype := sint
                                               ; vname := "i.334"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |}))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "v_temp.339"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Lvar
                         {| v_var :=
                              {| vtype := (sword U64)
                               ; vname := "v_temp.339"  |}
                          ; v_info := dummy_var_info |})
                      AT_none ((sword U64))
                      ((Pget AAscale U64
                          {| gv := {| v_var :=
                                        {| vtype :=
                                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                         ; vname := "v.335"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := sint
                                            ; vname := "i.334"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}))));
                  MkI InstrInfo.witness
                   (Cassgn
                      (Laset AAscale U64
                         {| v_var :=
                              {| vtype :=
                                   (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                               ; vname := "h.329"  |}
                          ; v_info := dummy_var_info |}
                         (Pvar
                            {| gv := {| v_var :=
                                          {| vtype := sint
                                           ; vname := "i.334"  |}
                                      ; v_info := dummy_var_info |} ; gs := Slocal |}))
                      AT_none ((sword U64))
                      ((Papp2 (Olxor U64)
                          (Pget AAscale U64
                             {| gv := {| v_var :=
                                           {| vtype :=
                                                (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                                            ; vname := "h.329"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}
                             (Pvar
                                {| gv := {| v_var :=
                                              {| vtype := sint
                                               ; vname := "i.334"  |}
                                          ; v_info := dummy_var_info |} ; gs := Slocal |}))
                          (Pvar
                             {| gv := {| v_var :=
                                           {| vtype := (sword U64)
                                            ; vname := "v_temp.339"  |}
                                       ; v_info := dummy_var_info |} ; gs := Slocal |}))))]) ]
      ; f_tyout := [(sarr (xO (xO (xO (xO (xO (xO xH)))))))]
      ; f_res :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                 ; vname := "h.329"  |}
            ; v_info := dummy_var_info |}]
      ; f_extra := tt
      ; |} )
 ; ( (* G *) xO (xI xH),
     {| f_info := FunInfo.witness
      ; f_tyin :=
          [(sarr (xO (xO (xO (xO (xO (xO (xO xH)))))))); sint; sint; sint;
            sint; (sword U64); (sword U64)]
      ; f_params :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "v.340"  |}
            ; v_info := dummy_var_info |};
            {| v_var := {| vtype := sint
                         ; vname := "a.341"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := sint
                         ; vname := "b.342"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := sint
                         ; vname := "c.343"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := sint
                         ; vname := "d.344"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "x.345"  |}
             ; v_info := dummy_var_info |};
            {| v_var := {| vtype := (sword U64)
                         ; vname := "y.346"  |}
             ; v_info := dummy_var_info |}]
      ; f_body :=
          [ MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_b.347"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "b.342"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "a.341"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "a.341"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_b.347"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "a.341"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "a.341"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "x.345"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_a.348"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "a.341"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "d.344"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "d.344"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_a.348"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_d.349"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "d.344"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Copn
                [Lnone dummy_var_info sbool; Lnone dummy_var_info sbool;
                  Lvar
                    {| v_var :=
                         {| vtype := (sword U64)
                          ; vname := "v_d.349"  |}
                     ; v_info := dummy_var_info |}]
                AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                [(Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_d.349"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Papp1 (Oword_of_int U8)
                     (Pconst (Zpos (xO (xO (xO (xO (xO xH))))))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "d.344"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_d.349"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |})));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_d.349"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "d.344"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "c.343"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "c.343"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_d.349"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_c.350"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "c.343"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "b.342"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "b.342"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_c.350"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_b.347"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "b.342"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Copn
                [Lnone dummy_var_info sbool; Lnone dummy_var_info sbool;
                  Lvar
                    {| v_var :=
                         {| vtype := (sword U64)
                          ; vname := "v_b.347"  |}
                     ; v_info := dummy_var_info |}]
                AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                [(Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_b.347"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Papp1 (Oword_of_int U8)
                     (Pconst (Zpos (xO (xO (xO (xI xH)))))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "b.342"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_b.347"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |})));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_b.347"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "b.342"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "a.341"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "a.341"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_b.347"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "a.341"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "a.341"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "y.346"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_a.348"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "a.341"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "d.344"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "d.344"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_a.348"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_d.349"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "d.344"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Copn
                [Lnone dummy_var_info sbool; Lnone dummy_var_info sbool;
                  Lvar
                    {| v_var :=
                         {| vtype := (sword U64)
                          ; vname := "v_d.349"  |}
                     ; v_info := dummy_var_info |}]
                AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                [(Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_d.349"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Papp1 (Oword_of_int U8)
                     (Pconst (Zpos (xO (xO (xO (xO xH)))))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "d.344"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_d.349"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |})));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_d.349"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "d.344"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "c.343"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Oadd (Op_w U64))
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "c.343"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_d.349"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_c.350"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "c.343"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "b.342"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Papp2 (Olxor U64)
                    (Pget AAscale U64
                       {| gv := {| v_var :=
                                     {| vtype :=
                                          (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                      ; vname := "v.340"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}
                       (Pvar
                          {| gv := {| v_var :=
                                        {| vtype := sint
                                         ; vname := "b.342"  |}
                                    ; v_info := dummy_var_info |} ; gs := Slocal |}))
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := (sword U64)
                                      ; vname := "v_c.350"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Cassgn
                (Lvar
                   {| v_var :=
                        {| vtype := (sword U64)
                         ; vname := "v_b.347"  |}
                    ; v_info := dummy_var_info |})
                AT_none ((sword U64))
                ((Pget AAscale U64
                    {| gv := {| v_var :=
                                  {| vtype :=
                                       (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                                   ; vname := "v.340"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}
                    (Pvar
                       {| gv := {| v_var :=
                                     {| vtype := sint
                                      ; vname := "b.342"  |}
                                 ; v_info := dummy_var_info |} ; gs := Slocal |}))));
            MkI InstrInfo.witness
             (Copn
                [Lnone dummy_var_info sbool; Lnone dummy_var_info sbool;
                  Lvar
                    {| v_var :=
                         {| vtype := (sword U64)
                          ; vname := "v_b.347"  |}
                     ; v_info := dummy_var_info |}]
                AT_keep (Oasm (* ROR_64 *) (BaseOp (None, (ROR U64))))
                [(Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_b.347"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |});
                  (Papp1 (Oword_of_int U8)
                     (Pconst (Zpos (xI (xI (xI (xI (xI xH))))))))]);
            MkI InstrInfo.witness
             (Cassgn
                (Laset AAscale U64
                   {| v_var :=
                        {| vtype :=
                             (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                         ; vname := "v.340"  |}
                    ; v_info := dummy_var_info |}
                   (Pvar
                      {| gv := {| v_var :=
                                    {| vtype := sint
                                     ; vname := "b.342"  |}
                                ; v_info := dummy_var_info |} ; gs := Slocal |}))
                AT_none ((sword U64))
                ((Pvar
                    {| gv := {| v_var :=
                                  {| vtype := (sword U64)
                                   ; vname := "v_b.347"  |}
                              ; v_info := dummy_var_info |} ; gs := Slocal |}))) ]
      ; f_tyout := [(sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))]
      ; f_res :=
          [{| v_var :=
                {| vtype := (sarr (xO (xO (xO (xO (xO (xO (xO xH))))))))
                 ; vname := "v.340"  |}
            ; v_info := dummy_var_info |}]
      ; f_extra := tt
      ; |} ) ] ;
  p_globs := [({| vtype := (sarr (xO (xO (xO (xO (xO (xO xH)))))))
                ; vname := "blake2b_iv.288"  |},
                (@Garr (xO (xO (xO (xO (xO (xO xH)))))) (* TODO: pp_gd *) _))
                ; ({| vtype :=
                        (sarr (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH)))))))))))
                    ; vname := "sigma.289"  |},
                    (@Garr
                       (xO (xO (xO (xO (xO (xO (xO (xO (xO (xI xH))))))))))
                       (* TODO: pp_gd *) _))] ;
  p_extra := tt |}.

Defined.
Notation BLAKE2B_JAZZ := ( xH ).
Notation BLAKE2B_FINAL := ( xO xH ).
Notation BLAKE2B_INIT := ( xO (xO xH) ).
Notation BLAKE2B_UPDATE := ( xI xH ).
Notation BLAKE2B_COMPRESS := ( xI (xO xH) ).
Notation G := ( xO (xI xH) ).
