gcd(X,0,X) :- X > 0.
gcd(X,Y,G) :- Y > 0, Z is X mod Y, gcd(Y,Z,G).

coprime(X,Y) :- gcd(X,Y,1).

/* coprime(35, 64). */