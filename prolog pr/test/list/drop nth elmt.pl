drop(L1,N,L2) :- drop(L1,N,L2,N).

drop([],_,[],_).
drop([_|Xs],N,Ys,1) :- drop(Xs,N,Ys,N).
drop([X|Xs],N,[X|Ys],K) :- K > 1, K1 is K - 1, drop(Xs,N,Ys,K1).

/*  drop([a,b,c,d,e,f,g,h,i,k],3,X). */