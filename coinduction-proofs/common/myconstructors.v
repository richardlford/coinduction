(* This version for messages 
Ltac myconstructor tac :=
  tryif constructor 1; tac then idtac "constructor 1 with tac ok" else
    tryif constructor 2; tac then idtac "constructor 2 with tac ok" else
      tryif constructor 3; tac then idtac "constructor 3 with tac ok" else
        tryif constructor 4; tac then idtac "constructor 4 with tac ok" else
          tryif constructor 5; tac then idtac "constructor 5 with tac ok" else
            tryif constructor 6; tac then idtac "constructor 6 with tac ok" else
              tryif constructor 7; tac then idtac "constructor 7 with tac ok" else
                idtac "constructor with tac failed".

Ltac emyconstructor tac :=
  tryif econstructor 1; tac then idtac "econstructor 1 with tac ok" else
    tryif econstructor 2; tac then idtac "econstructor 2 with tac ok" else
      tryif econstructor 3; tac then idtac "econstructor 3 with tac ok" else
        tryif econstructor 4; tac then idtac "econstructor 4 with tac ok" else
          tryif econstructor 5; tac then idtac "econstructor 5 with tac ok" else
            tryif econstructor 6; tac then idtac "econstructor 6 with tac ok" else
              tryif econstructor 7; tac then idtac "econstructor 7 with tac ok" else
                idtac "econstructor with tac failed";fail.

 *)

Ltac myconstructor tac :=
  tryif constructor 1; tac then idtac else
    tryif constructor 2; tac then idtac else
      tryif constructor 3; tac then idtac else
        tryif constructor 4; tac then idtac else
          tryif constructor 5; tac then idtac else
            tryif constructor 6; tac then idtac else
              tryif constructor 7; tac then idtac else
                fail.

Ltac emyconstructor tac :=
  tryif econstructor 1; tac then idtac else
    tryif econstructor 2; tac then idtac else
      tryif econstructor 3; tac then idtac else
        tryif econstructor 4; tac then idtac else
          tryif econstructor 5; tac then idtac else
            tryif econstructor 6; tac then idtac else
              tryif econstructor 7; tac then idtac else
                idtac; fail.
