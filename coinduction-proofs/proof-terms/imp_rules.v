Require Import ZArith.
Require Import String.

Require Export imp_domains.
Require Export imp_domains_aux.

Set Implicit Arguments.

Inductive kstep : kcfg -> kcfg -> Prop :=
 | k_rule_0 : forall {GeneratedFreshVar1 GeneratedFreshVar2 GeneratedFreshVar20 WildVar1 H},
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar20))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_Stmt_KItem (If GeneratedFreshVar20 GeneratedFreshVar1 GeneratedFreshVar2)) WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar20) (kra (k_freeze (k_inj_Stmt_KItem (If k_HOLE_BExp GeneratedFreshVar1 GeneratedFreshVar2))) WildVar1)) H)
 | k_rule_1 : forall {GeneratedFreshVar1 GeneratedFreshVar2 GeneratedFreshVar20 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar20) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar20)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_wrap_Stmt_KItem (If k_HOLE_BExp GeneratedFreshVar1 GeneratedFreshVar2))) WildVar1)) H)
           (KCfg (kra (k_inj_Stmt_KItem (If GeneratedFreshVar20 GeneratedFreshVar1 GeneratedFreshVar2)) WildVar1) H)
 | k_rule_2 : forall {GeneratedFreshVar21 GeneratedFreshVar3 WildVar1 H},
   eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar21))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
   kstep (KCfg (kra (k_wrap_Stmt_KItem (Assign GeneratedFreshVar3 GeneratedFreshVar21)) WildVar1) H)
         (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar21) (kra (k_freeze (k_inj_Stmt_KItem (Assign GeneratedFreshVar3 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_3 : forall {GeneratedFreshVar21 GeneratedFreshVar3 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar21) ->
     eq ((* isKResult *) k_label_isKResult x1) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_wrap_Stmt_KItem (Assign GeneratedFreshVar3 k_HOLE_AExp))) WildVar1)) H)
           (KCfg (kra (k_inj_Stmt_KItem (Assign GeneratedFreshVar3 GeneratedFreshVar21)) WildVar1) H)
 | k_rule_4 : forall {GeneratedFreshVar22 WildVar1 H},
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar22))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_BExp_KItem (Not GeneratedFreshVar22)) WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar22) (kra (k_freeze (k_inj_BExp_KItem (Not k_HOLE_BExp))) WildVar1)) H)
 | k_rule_5 : forall {GeneratedFreshVar22 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar22) ->
     eq ((* isKResult *) k_label_isKResult x1) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_wrap_BExp_KItem (Not k_HOLE_BExp))) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Not GeneratedFreshVar22)) WildVar1) H)
 | k_rule_6 : forall {GeneratedFreshVar23 GeneratedFreshVar7 WildVar1 H},
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar23))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_AExp_KItem (Add GeneratedFreshVar23 GeneratedFreshVar7)) WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar23) (kra (k_freeze (k_inj_AExp_KItem (Add k_HOLE_AExp GeneratedFreshVar7))) WildVar1)) H)
 | k_rule_7 : forall {GeneratedFreshVar23 GeneratedFreshVar7 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar23) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar23)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_inj_AExp_KItem (Add k_HOLE_AExp GeneratedFreshVar7))) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Add GeneratedFreshVar23 GeneratedFreshVar7)) WildVar1) H)
 | k_rule_8 : forall {GeneratedFreshVar24 GeneratedFreshVar8 WildVar1 H},
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar24))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_AExp_KItem (Add GeneratedFreshVar8 GeneratedFreshVar24)) WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar24) (kra (k_freeze (k_inj_AExp_KItem (Add GeneratedFreshVar8 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_9 : forall {GeneratedFreshVar24 GeneratedFreshVar8 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar24) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar24)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_wrap_AExp_KItem (Add GeneratedFreshVar8 k_HOLE_AExp))) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Add GeneratedFreshVar8 GeneratedFreshVar24)) WildVar1) H)
 | k_rule_10 : forall {GeneratedFreshVar11 GeneratedFreshVar25 WildVar1 H},
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar25))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_AExp_KItem (Div GeneratedFreshVar25 GeneratedFreshVar11)) WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar25) (kra (k_freeze (k_inj_AExp_KItem (Div k_HOLE_AExp GeneratedFreshVar11))) WildVar1)) H)
 | k_rule_11 : forall {GeneratedFreshVar11 GeneratedFreshVar25 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar25) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar25)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze (k_wrap_AExp_KItem (Div k_HOLE_AExp GeneratedFreshVar11))) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Div GeneratedFreshVar25 GeneratedFreshVar11)) WildVar1) H)
 | k_rule_12 : forall {GeneratedFreshVar12 GeneratedFreshVar26 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Div GeneratedFreshVar12 GeneratedFreshVar26)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar26))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar26) (kra (k_freeze (k_inj_AExp_KItem (Div GeneratedFreshVar12 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_13 : forall {GeneratedFreshVar12 GeneratedFreshVar26 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar26) ->
     eq (k_proj_AExp_KItem x2) (Some (Div GeneratedFreshVar12 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar26)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Div GeneratedFreshVar12 GeneratedFreshVar26)) WildVar1) H)
 | k_rule_14 : forall {GeneratedFreshVar15 GeneratedFreshVar27 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (And GeneratedFreshVar27 GeneratedFreshVar15)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar27))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar27) (kra (k_freeze (k_inj_BExp_KItem (And k_HOLE_BExp GeneratedFreshVar15))) WildVar1)) H)
 | k_rule_15 : forall {GeneratedFreshVar15 GeneratedFreshVar27 WildVar1 x1 x2 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar27) ->
     eq (k_proj_BExp_KItem x2) (Some (And k_HOLE_BExp GeneratedFreshVar15)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar27)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (And GeneratedFreshVar27 GeneratedFreshVar15)) WildVar1) H)
 | k_rule_16 : forall {GeneratedFreshVar17 GeneratedFreshVar28 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Le GeneratedFreshVar28 GeneratedFreshVar17)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar28))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar28) (kra (k_freeze (k_inj_BExp_KItem (Le k_HOLE_AExp GeneratedFreshVar17))) WildVar1)) H)
 | k_rule_17 : forall {GeneratedFreshVar17 GeneratedFreshVar28 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar28) ->
     eq (k_proj_BExp_KItem x2) (Some (Le k_HOLE_AExp GeneratedFreshVar17)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar28)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Le GeneratedFreshVar28 GeneratedFreshVar17)) WildVar1) H)
 | k_rule_18 : forall {GeneratedFreshVar18 GeneratedFreshVar29 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Le GeneratedFreshVar18 GeneratedFreshVar29)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar29))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar29) (kra (k_freeze (k_inj_BExp_KItem (Le GeneratedFreshVar18 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_19 : forall {GeneratedFreshVar18 GeneratedFreshVar29 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar29) ->
     eq (k_proj_BExp_KItem x2) (Some (Le GeneratedFreshVar18 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar29)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Le GeneratedFreshVar18 GeneratedFreshVar29)) WildVar1) H)
 | k_rule_20 : forall {I WildVar1 WildVar2 X x1},
     MapEquiv x1 (kra (k_wrap_Id_KItem X) kdot |-> kra I kdot :* WildVar2) ->
     kstep (KCfg (kra (k_wrap_Id_KItem X) WildVar1) x1)
           (KCfg (kra I WildVar1) (kra (k_wrap_Id_KItem X) kdot |-> kra I kdot :* WildVar2))
 | k_rule_21 : forall {I1 I2 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Div (ACon I1) (ACon I2))) ->
     eq ((* '_=/=Int_ *) k_label_zqzuzezszeIntzu I2 (k_wrap_zhInt_Int 0)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_Int_KItem ((* '_/Int_ *) k_label_zqzuzsIntzu I1 I2)) WildVar1) H)
 | k_rule_22 : forall {I1 I2 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Add (ACon I1) (ACon I2))) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_Int_KItem ((* '_+Int_ *) k_label_zqzuzpIntzu I1 I2)) WildVar1) H)
 | k_rule_23 : forall {I1 I2 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Le (ACon I1) (ACon I2))) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_Bool_KItem ((* '_<=Int_ *) k_label_zqzuzlzeIntzu I1 I2)) WildVar1) H)
 | k_rule_24 : forall {T WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Not (BCon T))) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_Bool_KItem ((* 'notBool_ *) k_label_zqnotBoolzu T)) WildVar1) H)
 | k_rule_25 : forall {B WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (And (BCon (k_wrap_zhBool_Bool true)) B)) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem B) WildVar1) H)
 | k_rule_26 : forall {WildVar1 WildVar2 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (And (BCon (k_wrap_zhBool_Bool false)) WildVar1)) ->
     kstep (KCfg (kra x1 WildVar2) H)
           (KCfg (kra (k_wrap_zhBool_KItem false) WildVar2) H)
 | k_rule_27 : forall {WildVar1 H},
   kstep (KCfg (kra (k_wrap_Block_KItem BEmpty) WildVar1) H)
         (KCfg WildVar1 H)
 | k_rule_28 : forall {S WildVar1 H},
   kstep (KCfg (kra (k_wrap_Block_KItem (BStmt S)) WildVar1) H)
         (KCfg (kra (k_inj_Stmt_KItem S) WildVar1) H)
 | k_rule_29 : forall {I WildVar1 WildVar2 WildVar3 X x1 x2},
     eq (k_proj_Stmt_KItem x1) (Some (Assign X (ACon I))) ->
     MapEquiv x2 (kra (k_wrap_Id_KItem X) kdot |-> WildVar1 :* WildVar3) ->
     kstep (KCfg (kra x1 WildVar2) x2)
           (KCfg WildVar2 (kra (k_wrap_Id_KItem X) kdot |-> kra (k_inj_Int_KItem I) kdot :* WildVar3))
 | k_rule_30 : forall {S1 S2 WildVar1 x1 H},
     eq (k_proj_Stmt_KItem x1) (Some (Seq S1 S2)) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_Stmt_KItem S1) (kra (k_inj_Stmt_KItem S2) WildVar1)) H)
 | k_rule_31 : forall {S WildVar1 WildVar2 x1 H},
     eq (k_proj_Stmt_KItem x1) (Some (If (BCon (k_wrap_zhBool_Bool true)) S WildVar1)) ->
     kstep (KCfg (kra x1 WildVar2) H)
           (KCfg (kra (k_wrap_Block_KItem S) WildVar2) H)
 | k_rule_32 : forall {S WildVar1 WildVar2 x1 H},
     eq (k_proj_Stmt_KItem x1) (Some (If (BCon (k_wrap_zhBool_Bool false)) WildVar1 S)) ->
     kstep (KCfg (kra x1 WildVar2) H)
           (KCfg (kra (k_wrap_Block_KItem S) WildVar2) H)
 | k_rule_33 : forall {B S WildVar1 x1 H},
      eq (k_proj_Stmt_KItem x1) (Some (While B S)) ->
      kstep (KCfg (kra x1 WildVar1) H)
            (KCfg (kra (k_inj_Stmt_KItem (If B (BStmt (Seq (k_wrap_Block_Stmt S) (While B S))) BEmpty)) WildVar1) H)
 | k_rule_34 : forall {Rho WildVar1 X Xs},
     eq ((* 'notBool_ *) k_label_zqnotBoolzu ((* '_in_ *) k_label_zqzuinzu (kra (k_wrap_Id_KItem X) kdot) ((* 'keys *) k_label_zqkeys Rho))) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra (k_wrap_Pgm_KItem ((* 'int_;_ *) k_label_zqintzuZSzu (cons X Xs) WildVar1)) kdot) Rho)
           (KCfg (kra (k_wrap_Pgm_KItem ((* 'int_;_ *) k_label_zqintzuZSzu Xs WildVar1)) kdot) (Rho :* kra (k_wrap_Id_KItem X) kdot |-> kra (k_wrap_zhInt_KItem 0) kdot))
 | k_rule_35 : forall {S WildVar1 H},
     kstep (KCfg (kra (k_wrap_Pgm_KItem ((* 'int_;_ *) k_label_zqintzuZSzu nil S)) WildVar1) H)
           (KCfg (kra (k_inj_Stmt_KItem S) WildVar1) H)
 | k_rule_36 : forall {GeneratedFreshVar1 GeneratedFreshVar2 GeneratedFreshVar20 WildVar1 x1 H},
     eq (k_proj_Stmt_KItem x1) (Some (If GeneratedFreshVar20 GeneratedFreshVar1 GeneratedFreshVar2)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar20))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar20) (kra (k_freeze (k_inj_Stmt_KItem (If k_HOLE_BExp GeneratedFreshVar1 GeneratedFreshVar2))) WildVar1)) H)
 | k_rule_37 : forall {GeneratedFreshVar1 GeneratedFreshVar2 GeneratedFreshVar20 WildVar1 x1 x2 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar20) ->
     eq (k_proj_Stmt_KItem x2) (Some (If k_HOLE_BExp GeneratedFreshVar1 GeneratedFreshVar2)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar20)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_Stmt_KItem (If GeneratedFreshVar20 GeneratedFreshVar1 GeneratedFreshVar2)) WildVar1) H)
 | k_rule_38 : forall {GeneratedFreshVar21 GeneratedFreshVar3 WildVar1 x1 H},
     eq (k_proj_Stmt_KItem x1) (Some (Assign GeneratedFreshVar3 GeneratedFreshVar21)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar21))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar21) (kra (k_freeze (k_inj_Stmt_KItem (Assign GeneratedFreshVar3 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_39 : forall {GeneratedFreshVar21 GeneratedFreshVar3 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar21) ->
     eq (k_proj_Stmt_KItem x2) (Some (Assign GeneratedFreshVar3 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar21)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_Stmt_KItem (Assign GeneratedFreshVar3 GeneratedFreshVar21)) WildVar1) H)
 | k_rule_40 : forall {GeneratedFreshVar22 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Not GeneratedFreshVar22)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar22))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar22) (kra (k_freeze (k_inj_BExp_KItem (Not k_HOLE_BExp))) WildVar1)) H)
 | k_rule_41 : forall {GeneratedFreshVar22 WildVar1 x1 x2 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar22) ->
     eq (k_proj_BExp_KItem x2) (Some (Not k_HOLE_BExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar22)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Not GeneratedFreshVar22)) WildVar1) H)
 | k_rule_42 : forall {GeneratedFreshVar23 GeneratedFreshVar7 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Add GeneratedFreshVar23 GeneratedFreshVar7)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar23))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar23) (kra (k_freeze (k_inj_AExp_KItem (Add k_HOLE_AExp GeneratedFreshVar7))) WildVar1)) H)
 | k_rule_43 : forall {GeneratedFreshVar23 GeneratedFreshVar7 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar23) ->
     eq (k_proj_AExp_KItem x2) (Some (Add k_HOLE_AExp GeneratedFreshVar7)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar23)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Add GeneratedFreshVar23 GeneratedFreshVar7)) WildVar1) H)
 | k_rule_44 : forall {GeneratedFreshVar24 GeneratedFreshVar8 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Add GeneratedFreshVar8 GeneratedFreshVar24)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar24))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar24) (kra (k_freeze (k_inj_AExp_KItem (Add GeneratedFreshVar8 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_45 : forall {GeneratedFreshVar24 GeneratedFreshVar8 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar24) ->
     eq (k_proj_AExp_KItem x2) (Some (Add GeneratedFreshVar8 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar24)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Add GeneratedFreshVar8 GeneratedFreshVar24)) WildVar1) H)
 | k_rule_46 : forall {GeneratedFreshVar11 GeneratedFreshVar25 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Div GeneratedFreshVar25 GeneratedFreshVar11)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar25))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar25) (kra (k_freeze (k_inj_AExp_KItem (Div k_HOLE_AExp GeneratedFreshVar11))) WildVar1)) H)
 | k_rule_47 : forall {GeneratedFreshVar11 GeneratedFreshVar25 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar25) ->
     eq (k_proj_AExp_KItem x2) (Some (Div k_HOLE_AExp GeneratedFreshVar11)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar25)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Div GeneratedFreshVar25 GeneratedFreshVar11)) WildVar1) H)
 | k_rule_48 : forall {GeneratedFreshVar12 GeneratedFreshVar26 WildVar1 x1 H},
     eq (k_proj_AExp_KItem x1) (Some (Div GeneratedFreshVar12 GeneratedFreshVar26)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar26))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar26) (kra (k_freeze (k_inj_AExp_KItem (Div GeneratedFreshVar12 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_49 : forall {GeneratedFreshVar12 GeneratedFreshVar26 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar26) ->
     eq (k_proj_AExp_KItem x2) (Some (Div GeneratedFreshVar12 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar26)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_AExp_KItem (Div GeneratedFreshVar12 GeneratedFreshVar26)) WildVar1) H)
 | k_rule_50 : forall {GeneratedFreshVar15 GeneratedFreshVar27 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (And GeneratedFreshVar27 GeneratedFreshVar15)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar27))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_BExp_KItem GeneratedFreshVar27) (kra (k_freeze (k_inj_BExp_KItem (And k_HOLE_BExp GeneratedFreshVar15))) WildVar1)) H)
 | k_rule_51 : forall {GeneratedFreshVar15 GeneratedFreshVar27 WildVar1 x1 x2 H},
     eq (k_proj_BExp_KItem x1) (Some GeneratedFreshVar27) ->
     eq (k_proj_BExp_KItem x2) (Some (And k_HOLE_BExp GeneratedFreshVar15)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_BExp_KItem GeneratedFreshVar27)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (And GeneratedFreshVar27 GeneratedFreshVar15)) WildVar1) H)
 | k_rule_52 : forall {GeneratedFreshVar17 GeneratedFreshVar28 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Le GeneratedFreshVar28 GeneratedFreshVar17)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar28))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar28) (kra (k_freeze (k_inj_BExp_KItem (Le k_HOLE_AExp GeneratedFreshVar17))) WildVar1)) H)
 | k_rule_53 : forall {GeneratedFreshVar17 GeneratedFreshVar28 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar28) ->
     eq (k_proj_BExp_KItem x2) (Some (Le k_HOLE_AExp GeneratedFreshVar17)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar28)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Le GeneratedFreshVar28 GeneratedFreshVar17)) WildVar1) H)
 | k_rule_54 : forall {GeneratedFreshVar18 GeneratedFreshVar29 WildVar1 x1 H},
     eq (k_proj_BExp_KItem x1) (Some (Le GeneratedFreshVar18 GeneratedFreshVar29)) ->
     eq ((* '_=/=K_ *) k_label_zqzuzezszeKzu (kra (k_inj_Bool_KItem ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar29))) kdot) (kra (k_wrap_zhBool_KItem true) kdot)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 WildVar1) H)
           (KCfg (kra (k_inj_AExp_KItem GeneratedFreshVar29) (kra (k_freeze (k_inj_BExp_KItem (Le GeneratedFreshVar18 k_HOLE_AExp))) WildVar1)) H)
 | k_rule_55 : forall {GeneratedFreshVar18 GeneratedFreshVar29 WildVar1 x1 x2 H},
     eq (k_proj_AExp_KItem x1) (Some GeneratedFreshVar29) ->
     eq (k_proj_BExp_KItem x2) (Some (Le GeneratedFreshVar18 k_HOLE_AExp)) ->
     eq ((* isKResult *) k_label_isKResult (k_inj_AExp_KItem GeneratedFreshVar29)) (k_wrap_zhBool_Bool true) ->
     kstep (KCfg (kra x1 (kra (k_freeze x2) WildVar1)) H)
           (KCfg (kra (k_inj_BExp_KItem (Le GeneratedFreshVar18 GeneratedFreshVar29)) WildVar1) H)
.
