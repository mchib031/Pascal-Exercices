program Exercice9_1;
uses wincrt;    
 var d1,d2,res:string;
 j1,j2,m1,m2,a1,a2,e:integer; 

begin
{******* Saisir la date  ****** }
        write('donner une date : ');readln(d1);
        write('donner une date : ');readln(d2);
        val(  copy(d1,1,2)  , j1, e);
        val(  copy(d1,4,2)  , m1, e);
        val(  copy(d1,7,4)  , a1, e);

        val(  copy(d2,1,2)  , j2, e);
        val(  copy(d2,4,2)  , m2, e);
        val(  copy(d2,7,4)  , a2, e);
 {******* Verifier les dates  ****** Méthode 1 ****}
 if a1 > a2 then res:= d1
 else if a2 > a1 then res := d2
 else if m1 > m2 then res:= d1
 else if m2 > m1 then res := d2
 else if j1 > j2 then res:= d1
 else  res := d2 ;
  {******* Verifier les dates  ****** Méthode 2 ****}
if (a1 > a2) or ((a1 = a2) and (m1 > m2)) or ((a1 = a2) and (m1 = m2) and (j1 > j2)) then
 write( d1 )
 else
 write( d2 );

end.