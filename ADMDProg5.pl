savings_account(anthony, defallo, 20304, 2.45).
checking_account(anthony, defallo, 2030, 1.75).
trust_account(anthony, defallo, 21, 13954, 5.25).
trust_account(james, smith, 18, 345, 4.75).
business_account(tekenology, retail, 20304, 0.75).


get_balance_savings(FName, LName) :- 
savings_account(FName, LName, Bal, IRate), 
tab(1), write(FName), format(' ~w has a balance of $~2f ~n', [LName, Bal]).

run_savings(FName, LName, NBal, WAm) :- 
savings_account(FName, LName, Bal, IRate), 
X is Bal+NBal+(NBal*(IRate/100)), write(FName), format(' ~w has a balance of $~2f ~n', [LName, X]), 
Y is X-WAm, write(FName), format(' ~w has a balance of $~2f ~n', [LName, Y]).


get_balance_checking(FName, LName) :- 
checking_account(FName, LName, Bal, CRate), 
tab(1), write(FName), format(' ~w has a balance of $~2f ~n', [LName, Bal]).

run_checking(FName, LName, NBal, WAm) :- 
checking_account(FName, LName, Bal, CRate), 
X is Bal+NBal, write(FName), format(' ~w has a balance of $~2f ~n', [LName, X]), 
Y is X-WAm-CRate, write(FName), format(' ~w has a balance of $~2f ~n', [LName, Y]).


get_balance_trust(FName, LName) :- 
trust_account(FName, LName, Age, Bal, IRate), 
tab(1), write(FName), format(' ~w has a balance of $~2f ~n', [LName, Bal]).

run_trust(FName, LName, NBal, WAm) :- 
trust_account(FName, LName, Age, Bal, IRate), 
X is Bal+NBal+(NBal*(IRate/100)), write(FName), format(' ~w has a balance of $~2f ~n', [LName, X]),
Age >= 21, Y is X-WAm, write(FName), format(' ~w has a balance of $~2f ~n', [LName, Y]).


get_balance_business(BName, Type) :- 
business_account(BName, Type, Bal, TRate), 
tab(1), write(BName), format(' ~w has a balance of $~2f ~n', [Bal]).

run_business(BName, DAm, WAm) :- 
business_account(BName, Type, Bal, TRate), 
X is Bal+DAm, format(' ~w has a balance of $~2f ~n', [BName, X]), 
Y is X-WAm-TRate, format(' ~w has a balance of $~2f ~n', [BName, Y]).


