LoadPackage("CatReps");

DeactivateCachingOfCategory( FinSets );
CapCategorySwitchLogicOff( FinSets );
DisableSanityChecks( FinSets );
   
C := Subcategory( FinSets, "A finite concrete category" :
overhead := false, FinalizeCategory := false );
    
DeactivateCachingOfCategory( C );
CapCategorySwitchLogicOff( C );
DisableSanityChecks( C );
    
SetFilterObj( C, IsFiniteConcreteCategory );
    
AddIsAutomorphism( C,
  function( alpha )
    return IsAutomorphism( UnderlyingCell( alpha ) );
end );
    
AddInverse( C,
  function( alpha )
    return Inverse( UnderlyingCell( alpha ) ) / CapCategory( alpha );
end );

objects := List( [1..54], o-> [o] );
objects := List( objects, FinSet );;
SetSetOfObjects( C, List( objects, o -> o / C ) );
gmorphisms := List( objects, o->IdentityMorphism(o) / C );;
SetSetOfGeneratingMorphisms( C, gmorphisms );
Finalize( C );

arrows := List( [1..54], i->[Concatenation("a",String(i)), i,i] );;
q := RightQuiver( "q", 54, arrows);;
GF3 := HomalgRingOfIntegers( 3 );;
kq := PathAlgebra( GF3, q );
q_arrows := Arrows( q );
rel := List( q_arrows, a-> PathAsAlgebraElement( kq, a )^1 - PathAsAlgebraElement( kq, Source(a) ) );;
kq := kq / rel;
IsFiniteDimensional( kq );
#! true
kq := Algebroid( kq );;
SetUnderlyingCategory( kq, C );
SetIsLinearClosureOfACategory( kq, true );
CatanRep := Hom( kq, GF3 );
YonedaProjective( CatanRep, kq.1 );
######
C2 := Subcategory( FinSets, "A finite concrete category" :
overhead := false, FinalizeCategory := false );
DeactivateCachingOfCategory( C2 );
CapCategorySwitchLogicOff( C2 );
DisableSanityChecks( C2 );
SetFilterObj( C2, IsFiniteConcreteCategory );
AddIsAutomorphism( C2,
  function( alpha )
    return IsAutomorphism( UnderlyingCell( alpha ) );
end );
AddInverse( C2,
  function( alpha )
    return Inverse( UnderlyingCell( alpha ) ) / CapCategory( alpha );
end );
SetSetOfObjects( C2, List( objects, o -> o / C2 ) );
gmorphisms := List( objects, o->IdentityMorphism(o) / C2 );;
Add( gmorphisms, MapOfFinSets( objects[1], [1,4], objects[4] ) / C2 );
Add( gmorphisms, MapOfFinSets( objects[1], [1,5], objects[5] ) / C2 );
SetSetOfGeneratingMorphisms( C2, gmorphisms );
Finalize( C2 );
arrows := List( [1..54], i->[Concatenation("a",String(i)), i,i] );;
Add( arrows, [ "d14", 1, 4 ]);
Add( arrows, [ "d15", 1, 5 ]);
q := RightQuiver( "q", 54, arrows);;
kq := PathAlgebra( GF3, q );
q_arrows := Arrows( q );
rel := List( q_arrows, function(a) if Source( a ) = Target( a ) then
return PathAsAlgebraElement( kq, a )^1 - PathAsAlgebraElement( kq, Source(a) ); else
return "donothing"; fi; 
end );
rel := Filtered( rel, e-> not( e = "donothing") );
kq := kq / rel;
IsFiniteDimensional( kq );
#! true
kq := Algebroid( kq );;
SetUnderlyingCategory( kq, C2 );
SetIsLinearClosureOfACategory( kq, true );
CatanRep := Hom( kq, GF3 );
YonedaProjective( CatanRep, kq.1 );;