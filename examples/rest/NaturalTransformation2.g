gap> fifteen := DirectSum( [nine, six ] );
<(1)->8, (2)->7; (a)->8x8, (b)->8x7, (c)->7x7>
gap> D := [ nine, six ];
[ <(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>, <(1)->3, (2)->3; (a)->3x3, (b)->3x3, (c)->3x3> ]
gap> pi1 := ProjectionInFactorOfDirectSum( D, 1 );
<(1)->8x5, (2)->7x4>
gap> pi2 := ProjectionInFactorOfDirectSum( D, 2 );
<(1)->8x3, (2)->7x3>
gap> iota1 := InjectionOfCofactorOfDirectSum( D, 1 );
<(1)->5x8, (2)->4x7>
gap> iota2 := InjectionOfCofactorOfDirectSum( D, 2 );
<(1)->3x8, (2)->3x7>
gap> Display( pi1(kq.1) );
 1 . . . .
 . 1 . . .
 . . 1 . .
 . . . 1 .
 . . . . 1
 . . . . .
 . . . . .
 . . . . .

A morphism in Category of matrices over GF(3)
gap> Display( pi2(kq.1) );
 . . .
 . . .
 . . .
 . . .
 . . .
 1 . .
 . 1 .
 . . 1

A morphism in Category of matrices over GF(3)
gap> Display( iota1(kq.1) );
 1 . . . . . . .
 . 1 . . . . . .
 . . 1 . . . . .
 . . . 1 . . . .
 . . . . 1 . . .

A morphism in Category of matrices over GF(3)
gap> Display( iota2(kq.1) );
 . . . . . 1 . .
 . . . . . . 1 .
 . . . . . . . 1

A morphism in Category of matrices over GF(3)
gap> Display( iota1(kq.2) );
 1 . . . . . .
 . 1 . . . . .
 . . 1 . . . .
 . . . 1 . . .

A morphism in Category of matrices over GF(3)
gap> Display( iota2(kq.2) );
 . . . . 1 . .
 . . . . . 1 .
 . . . . . . 1

A morphism in Category of matrices over GF(3)
gap> Display( pi1(kq.2) );
 1 . . .
 . 1 . .
 . . 1 .
 . . . 1
 . . . .
 . . . .
 . . . .

A morphism in Category of matrices over GF(3)
gap> Display( pi2(kq.2) );
 . . .
 . . .
 . . .
 . . .
 1 . .
 . 1 .
 . . 1

A morphism in Category of matrices over GF(3)
gap> fifteen( kq.a );
<A morphism in Category of matrices over GF(3)>
gap> Display( fifteen( kq.a ) );
 1 1 . . . . . .
 . 1 1 . . . . .
 . . 1 . . . . .
 . . . 1 1 . . .
 . . . . 1 . . .
 . . . . . 1 1 .
 . . . . . . 1 1
 . . . . . . . 1

A morphism in Category of matrices over GF(3)
gap> Display( fifteen( kq.b ) );
 . 1 . . . . .
 . . 1 . . . .
 . . . . . . .
 . 1 . 1 . . .
 . . 1 . . . .
 . . . . . 2 .
 . . . . . . 2
 . . . . . . .

A morphism in Category of matrices over GF(3)
gap> fifteen;
<(1)->8, (2)->7; (a)->8x8, (b)->8x7, (c)->7x7>
gap> D;
[ <(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>, <(1)->3, (2)->3; (a)->3x3, (b)->3x3, (c)->3x3> ]
gap> fivetonine;
Error, Variable: 'fivetonine' must have a value
not in any function at *stdin*:21
#I  Options stack has been reset
gap> fivetosix;
Error, Variable: 'fivetosix' must have a value
not in any function at *stdin*:22
gap> five;
<(1)->2, (2)->3; (a)->2x2, (b)->2x3, (c)->3x3>
gap> Display( five(kq.a) );
 1 1
 . 1

A morphism in Category of matrices over GF(3)
gap> Display( five(kq.b) );
 . 2 .
 . . 2

A morphism in Category of matrices over GF(3)
gap> Display( five(kq.c) );
 1 1 .
 . 1 1
 . . 1

A morphism in Category of matrices over GF(3)
gap> Display( six(kq.c) );
 1 1 .
 . 1 1
 . . 1

A morphism in Category of matrices over GF(3)
gap> Display( six(kq.a) );
 1 1 .
 . 1 1
 . . 1

A morphism in Category of matrices over GF(3)
gap> Display( six(kq.b) );
 . 2 .
 . . 2
 . . .

A morphism in Category of matrices over GF(3)
gap> F := five;
<(1)->2, (2)->3; (a)->2x2, (b)->2x3, (c)->3x3>
gap> G := six;
<(1)->3, (2)->3; (a)->3x3, (b)->3x3, (c)->3x3>
gap> H := nine;
<(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>
gap> A := TensorProductOnMorphisms( IdentityMorphism( G(kq.1) ), F(kq.a) )
> - TensorProductOnMorphisms( TransposedMorphism( G(kq.a) ), IdentityMorphism( F(kq.1) ) );
Error, Variable: 'TransposedMorphism' must have a value
not in any function at *stdin*:34
gap>
gap> TransposedMorphism := function( A )
>   local M;
>   M := TransposedMatrix( UnderlyingMatrix( A ) );
>   return VectorSpaceMorphism( Range( A ), M, Source( A ) );
> end;
function( A ) ... end
gap>
gap> A := TensorProductOnMorphisms( IdentityMorphism( G(kq.1) ), F(kq.a) )
> - TensorProductOnMorphisms( TransposedMorphism( G(kq.a) ), IdentityMorphism( F(kq.1) ) );
<A morphism in Category of matrices over GF(3)>

gap> Read("/mnt/c/Users/Tibor/Dropbox/wd/wd_Gap/normalize.g");

gap> A;
<A morphism in Category of matrices over GF(3)>
gap> Amat := UnderlyingMatrix( A );
<An unevaluated 6 x 6 matrix over an internal ring>
gap> Display( Amat );
 . 1 . . . .
 . . . . . .
 2 . . 1 . .
 . 2 . . . .
 . . 2 . . 1
 . . . 2 . .
gap> U := strictly_normalize_matrix( Amat );
<An unevaluated 6 x 6 matrix over an internal ring>
gap> Display( U*Amat );
 1 . . 2 . .
 . . . . . .
 . . 1 . . 2
 . . . 1 . .
 . 1 . . . .
 . . . . . .
gap> U := normalize_matrix( Amat );
<An unevaluated 6 x 6 matrix over an internal ring>
gap> Display( U*Amat );
 1 . . 2 . .
 . 1 . . . .
 . . 1 . . 2
 . . . 1 . .
 . . . . . .
 . . . . . .
gap> Display( addmat_inflated( 1,4,6, 2,GF3 )*U*Amat );
 1 . . 2 . .
 . 1 . . . .
 . . 1 . . 2
 1 . . . . .
 . . . . . .
 . . . . . .
gap> Display( addmat_inflated( 4,1,6, 2,GF3 )*U*Amat );
 1 . . . . .
 . 1 . . . .
 . . 1 . . 2
 . . . 1 . .
 . . . . . .
 . . . . . .
gap> Display( CertainColumns( (addmat_inflated( 4,1,6, 2,GF3 )*U*Amat), [5,6]) );
 . .
 . .
 . 2
 . .
 . .
 . .
gap> fivetosix;
Error, Variable: 'fivetosix' must have a value
not in any function at *stdin*:57
gap> Range(F(kq.a));
<A vector space object over GF(3) of dimension 2>
gap> Source(G(kq.a));
<A vector space object over GF(3) of dimension 3>
gap> HomalgMatrix( [[0, 0, 2], [0, 1, 2]], Dimension( Range(F(kq.a)) ), Dimension( Source(G(kq.a)) ), GF
3 );
<A 2 x 3 matrix over an internal ring>
gap> Display( last );
[ [  0,  0,  2 ],
  [  0,  1,  2 ] ]
gap> HomalgMatrix( One(GF3)*[[0, 0, 2], [0, 1, 2]], Dimension( Range(F(kq.a)) ), Dimension( Source(G(kq.
a)) ), GF3 );
<A 2 x 3 matrix over an internal ring>
gap> fivesixmat := HomalgMatrix( One(GF3)*[[0, 0, 2], [0, 1, 2]], Dimension( Range(F(kq.a)) ), Dimension
( Source(G(kq.a)) ), GF3 );
<A 2 x 3 matrix over an internal ring>
gap> fivesixamat := HomalgMatrix( One(GF3)*[[0, 0, 2], [0, 1, 2]], Dimension( Range(F(kq.a)) ), Dimensio
n( Source(G(kq.a)) ), GF3 );
<A 2 x 3 matrix over an internal ring>
gap> Display( fivesixamat );
 . . 2
 . 1 2
gap> B := TensorProductOnMorphisms( IdentityMorphism( G(kq.2) ), F(kq.c) ) - TensorProductOnMorphisms( TransposedMorphism( G(kq.c) ), IdentityMorphism( F(kq.2) ) );
<A morphism in Category of matrices over GF(3)>
gap> Bmat := UnderlyingMatrix( B );
<An unevaluated 9 x 9 matrix over an internal ring>
gap> fivesixbmat;
Error, Variable: 'fivesixbmat' must have a value
not in any function at *stdin*:68
gap> fivesixcmat;
Error, Variable: 'fivesixcmat' must have a value
not in any function at *stdin*:69
gap> C := TensorProductOnMorphisms( IdentityMorphism( G(kq.2) ), F(kq.c) ) - TensorProductOnMorphisms( T
ransposedMorphism( G(kq.c) ), IdentityMorphism( F(kq.2) ) );
<A morphism in Category of matrices over GF(3)>
gap> Cmat := Bmat;
<An unevaluated 9 x 9 matrix over an internal ring>
gap> U := normalize_matrix( Cmat );
<An unevaluated 9 x 9 matrix over an internal ring>
gap> Display( U* Cmat );
 1 . . . 2 . . . .
 . 1 . . . . . . .
 . . 1 . . . . . .
 . . . 1 . . . 2 .
 . . . . 1 . . . 2
 . . . . . 1 . . .
 . . . . . . . . .
 . . . . . . . . .
 . . . . . . . . .
gap> Display( addmat_inflated(5,1,9,2,GF3)*U* Cmat );
 1 . . . . . . . 2
 . 1 . . . . . . .
 . . 1 . . . . . .
 . . . 1 . . . 2 .
 . . . . 1 . . . 2
 . . . . . 1 . . .
 . . . . . . . . .
 . . . . . . . . .
 . . . . . . . . .
 
 gap> Display( CertainColumns( (addmat_inflated(5,1,9,2,GF3)*U* Cmat), [7,8,9]));
 . . 2
 . . .
 . . .
 . 2 .
 . . 2
 . . .
 . . .
 . . .
 . . .
gap> fivesixcmat := HomalgMatrix( One(GF3)*[ [2, 0, 0], [1, 2, 0], [1, 2, 1] ], Dimension( Range(F(kq.c))), Dimension( Source(G(kq.c)) ), GF3 );
<A 3 x 3 matrix over an internal ring>
gap> Display( fivesixcmat );
 2 . .
 1 2 .
 1 2 1
 
 gap> fivetosix := [ VectorSpaceMorphism( Range(F(kq.a)), fivesixamat, Source(G(kq.a)) ),VectorSpaceMorphism( Range(F(kq.c)), fivesixcmat, Source(G(kq.c)) ) ];
[ <A morphism in Category of matrices over GF(3)>, <A morphism in Category of matrices over GF(3)> ]
gap> IsCapNaturalTransformation( fivetosix );
false
gap> fivetosix_nat := AsMorphismInHomCategory( five, fivetosix, six );
<(1)->2x3, (2)->3x3>
gap> D;
[ <(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>, <(1)->3, (2)->3; (a)->3x3, (b)->3x3, (c)->3x3> ]
gap> fivetonine;
Error, Variable: 'fivetonine' must have a value
not in any function at *stdin*:83
gap> H;
<(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>
gap> IsWellDefined( fivetosix_nat );
false
gap> A := TensorProductOnMorphisms( IdentityMorphism( H(kq.1) ), F(kq.a) )
> - TensorProductOnMorphisms( TransposedMorphism( H(kq.a) ), IdentityMorphism( F(kq.1) ) );
<A morphism in Category of matrices over GF(3)>
gap> Amat := UnderlyingMatrix( A );
<An unevaluated 10 x 10 matrix over an internal ring>
gap> U := normalize_matrix( Amat );
<An unevaluated 10 x 10 matrix over an internal ring>
gap> Display( U*Amat );
 1 . . 2 . . . . . .
 . 1 . . . . . . . .
 . . 1 . . 2 . . . .
 . . . 1 . . . . . .
 . . . . . . 1 . . 2
 . . . . . . . 1 . .
 . . . . . . . . . .
 . . . . . . . . . .
 . . . . . . . . . .
 . . . . . . . . . .
gap> Display( addmat_inflated( 4,1,10,2,GF3)*U*Amat );
 1 . . . . . . . . .
 . 1 . . . . . . . .
 . . 1 . . 2 . . . .
 . . . 1 . . . . . .
 . . . . . . 1 . . 2
 . . . . . . . 1 . .
 . . . . . . . . . .
 . . . . . . . . . .
 . . . . . . . . . .
 . . . . . . . . . .
 
 gap> Display( CertainColumns( (addmat_inflated( 4,1,10,2,GF3)*U*Amat), [5..10] ));
 . . . . . .
 . . . . . .
 . 2 . . . .
 . . . . . .
 . . 1 . . 2
 . . . 1 . .
 . . . . . .
 . . . . . .
 . . . . . .
 . . . . . .
gap> [1,1,1,1,1,1];
[ 1, 1, 1, 1, 1, 1 ]
gap> fivetonine := HomalgMatrix( One(GF3)*[ [0, 0, 2, 0, 2], [0, 2, 2, 2, 2] ], Dimension( Range( F(kq.a
) ) ), Dimension( Source( H(kq.a)) ), GF3);
<A 2 x 5 matrix over an internal ring>
gap> fivetonine_amat := fivetonine;
<A 2 x 5 matrix over an internal ring>
gap> Display( fivetonine_amat );
 . . 2 . 2
 . 2 2 2 2
gap> C := TensorProductOnMorphisms( IdentityMorphism( H(kq.2) ), F(kq.c) ) - TensorProductOnMorphisms( TransposedMorphism( H(kq.c) ), IdentityMorphism( F(kq.2) ) );
<A morphism in Category of matrices over GF(3)>
gap> Cmat := UnderlyingMatrix( C );
<An unevaluated 12 x 12 matrix over an internal ring>
gap> U := normalize_matrix( Cmat );
<An unevaluated 12 x 12 matrix over an internal ring>
gap> Display( U * Cmat );
 1 . . . 2 . . . . . . .
 . 1 . . . . . . . . . .
 . . 1 . . . . . . . . .
 . . . 1 . . . 2 . . . .
 . . . . 1 . . . 2 . . .
 . . . . . 1 . . . . . .
 . . . . . . . . . . 1 .
 . . . . . . . . . . . 1
 . . . . . . . . . . . .
 . . . . . . . . . . . .
 . . . . . . . . . . . .
 . . . . . . . . . . . .
gap> Display( addmat_inflated(5,1,12,2,GF3)* U * Cmat );
 1 . . . . . . . 2 . . .
 . 1 . . . . . . . . . .
 . . 1 . . . . . . . . .
 . . . 1 . . . 2 . . . .
 . . . . 1 . . . 2 . . .
 . . . . . 1 . . . . . .
 . . . . . . . . . . 1 .
 . . . . . . . . . . . 1
 . . . . . . . . . . . .
 . . . . . . . . . . . .
 . . . . . . . . . . . .
 . . . . . . . . . . . .
gap> Display( CertainColumns( (addmat_inflated(5,1,12,2,GF3)* U * Cmat), [7..12] ) );
 . . 2 . . .
 . . . . . .
 . . . . . .
 . 2 . . . .
 . . 2 . . .
 . . . . . .
 . . . . 1 .
 . . . . . 1
 . . . . . .
 . . . . . .
 . . . . . .
 . . . . . .
gap> [1,1,1,1,1,1];
[ 1, 1, 1, 1, 1, 1 ]
gap> fivetonine_cmat := HomalgMatrix( One(GF3)*[ [2,0,0,2], [2,0,0,0], [2,2,2,2] ], Dimension( Range( F(
kq.c)) ), Dimension( Source( H(kq.c)) ), GF3 );
<A 3 x 4 matrix over an internal ring>
gap> Display( fivetonine_cmat );
 2 . . 2
 2 . . .
 2 2 2 2
gap> fivetonine := [ VectorSpaceMorphism( Range( F(kq.a
> ) ), fivetonine_amat, Source( H(kq.a)) ), VectorSpaceMorphism( Range( F(
> kq.c)), fivetonine_cmat, Source( H(kq.c)) ) ];
[ <A morphism in Category of matrices over GF(3)>, <A morphism in Category of matrices over GF(3)> ]
gap> fivetonine_nat := AsMorphismInHomCategory( five, fivetonine, nine );
<(1)->2x5, (2)->3x4>
gap> D;
[ <(1)->5, (2)->4; (a)->5x5, (b)->5x4, (c)->4x4>, <(1)->3, (2)->3; (a)->3x3, (b)->3x3, (c)->3x3> ]

gap> Display( UniversalMorphismIntoDirectSum( [ fivetosix_nat, fivetonine_nat ] ) );
A morphism in The category of functors: Algebroid generated by the right quiver q(2)[a:1->1,b:1->2,c:2\
->2] -> Category of matrices over GF(3) defined by the following data:


Image of <(1)>:
 . . 2 . . 2 . 2
 . 1 2 . 2 2 2 2

A morphism in Category of matrices over GF(3)


Image of <(2)>:
 2 . . 2 . . 2
 1 2 . 2 . . .
 1 2 1 2 2 2 2

A morphism in Category of matrices over GF(3)

gap> u_in := UniversalMorphismIntoDirectSum( [ fivetosix_nat, fivetonine_nat ] );
<(1)->2x8, (2)->3x7>
gap> Display( u_in );
A morphism in The category of functors: Algebroid generated by the right quiver q(2)[a:1->1,b:1->2,c:2\
->2] -> Category of matrices over GF(3) defined by the following data:


Image of <(1)>:
 . . 2 . . 2 . 2
 . 1 2 . 2 2 2 2

A morphism in Category of matrices over GF(3)


Image of <(2)>:
 2 . . 2 . . 2
 1 2 . 2 . . .
 1 2 1 2 2 2 2

A morphism in Category of matrices over GF(3)
gap> Source( u_in ) ;
<(1)->2, (2)->3; (a)->2x2, (b)->2x3, (c)->3x3>
gap> Source( u_in ) = five;
true
gap> Range( u_in ) = fifteen;
false
gap> Range( u_in );
<(1)->8, (2)->7; (a)->8x8, (b)->8x7, (c)->7x7>
gap> fifteen;
<(1)->8, (2)->7; (a)->8x8, (b)->8x7, (c)->7x7>
gap> Display( u_in(kq.1) );
 . . 2 . . 2 . 2
 . 1 2 . 2 2 2 2

A morphism in Category of matrices over GF(3)
gap> Display( fifteen(kq.1) );
A vector space object over GF(3) of dimension 8

gap> u_in(kq.1)*pi1(kq.1);
<A morphism in Category of matrices over GF(3)>
gap> Display( u_in(kq.1)*pi1(kq.1) );
 . . 2 . .
 . 1 2 . 2

A morphism in Category of matrices over GF(3)
gap> fivetosix_nat( kq.1 );
<A morphism in Category of matrices over GF(3)>
gap> Display( fivetosix_nat( kq.1 ) );
 . . 2
 . 1 2

A morphism in Category of matrices over GF(3)
gap> Display( u_in(kq.1)*pi2(kq.1) );
 2 . 2
 2 2 2

A morphism in Category of matrices over GF(3)
gap> Display( fivetosix_nat( kq.2 ) );
 2 . .
 1 2 .
 1 2 1

A morphism in Category of matrices over GF(3)

