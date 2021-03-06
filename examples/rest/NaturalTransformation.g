
Read("../CategoryOfRepresentations.g");
Read("/mnt/c/Users/Tibor/Dropbox/wd/wd_Gap/normalize.g");


eta := [
 VectorSpaceMorphism(
  nine(kq.1), HomalgMatrix(One(GF3)*emat, GF3), six(kq.1) ),
 VectorSpaceMorphism(
  nine(kq.2), HomalgMatrix(One(GF3)*fmat, GF3), six(kq.2) ) ];
#! [ <A morphism in Category of matrices over GF(3)>,
#! <A morphism in Category of matrices over GF(3)> ]
ninetosix := AsMorphismInHomCategory( nine, eta, six );
#! <(1)->5x3, (2)->4x3>
Perform( ninetosix(kq.a), Display );
#!  . 1 .
#!  . . 1
#!  . . .
#!  . 1 1
#!  . . 1
#!
#! A morphism in Category of matrices over GF(3)
#!  1 1 . . .
#!  . 1 1 . .
#!  . . 1 . .
#!  . . . 1 1
#!  . . . . 1
#!
#! A morphism in Category of matrices over GF(3)
#!  1 1 .
#!  . 1 1
#!  . . 1
#!
#! A morphism in Category of matrices over GF(3)
#!  . 1 .
#!  . . 1
#!  . . .
#!  . 1 1
#!  . . 1
#!
#! A morphism in Category of matrices over GF(3)

gmat := [
  [ 0,1 ],
  [ 1,0 ],
  [ 1,1 ]
];;
hmat := [
  [ 0,0,1 ],
  [ 1,0,0 ],
  [ 0,1,1 ]
];;

gamma := [
VectorSpaceMorphism(
  six(kq.1), HomalgMatrix( One(GF3)*gmat, GF3 ), five(kq.1) ),
VectorSpaceMorphism(
  six(kq.2), HomalgMatrix( One(GF3)*hmat, GF3 ), five(kq.2) )
];
sixtofive := AsMorphismInHomCategory( six, gamma, five );
#! <(1)->3x2, (2)->3x3>
ninetofive := PreCompose( ninetosix, sixtofive );
#! <(1)->5x2, (2)->4x3>
Perform( [ ninetosix(kq.1), sixtofive(kq.1), ninetofive(kq.1) ],
Display );
#!  . 1 .
#!  . . 1
#!  . . .
#!  . 1 1
#!  . . 1
#!
#! A morphism in Category of matrices over GF(3)
#!  . 1
#!  1 .
#!  1 1
#!
#! A morphism in Category of matrices over GF(3)
#!  1 .
#!  1 1
#!  . .
#!  2 1
#!  1 1
#!
#! A morphism in Category of matrices over GF(3)
ninetosix(kq.1)*sixtofive(kq.1) = ninetofive(kq.1);
#! true
PreCompose( ninetosix+ninetosix, sixtofive )
= PreCompose( ninetosix, sixtofive )
+ PreCompose( ninetosix, sixtofive );
#! true