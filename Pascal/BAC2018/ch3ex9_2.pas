program Exercice9_2;
uses wincrt;    
 var
 j,m,a:integer; 

begin
{******* Saisir la date  ****** }
        write('jour : ');readln(j);
        write('mois: ');readln(m);
        write('année: ');readln(a);         
  {******* Déterminer la nouvelle date  ****** Méthode 1 ****}
 if m in [1,3,5,7,8,10,12]  then
 begin
      if j <> 31 then j:=j+1
      else if m <> 12 then
      begin
          j:= 1 ;
          m:= m+1;
      end
      else 
      begin
          j:= 1 ;
          m:= 1;
          a := a + 1;
      end  ;
 end
 else if m in [4,6,9,11]  then
 begin
      if j <> 30 then j:=j+1
      else 
      begin
          j:= 1 ;
          m:= m+1;
      end  ;      
 end
 else if m = 2   then
 begin
      if a mod 4 = 0 then
        if j <> 29 then j:=j+1
        else 
        begin
          j:= 1 ;
          m:= m+1;
          end
      else
        if j <> 28 then j:=j+1
        else 
        begin
          j:= 1 ;
          m:= m+1;
          end
 end;
writeln(j , ' / ',m,' / ',a);

  {******* Déterminer la nouvelle date  ****** Méthode 2 ****}
if (j=31) and (m = 12)  then
      begin
          j:= 1 ;
          m:= 1;
          a := a + 1;
      end
else if  ( ( j=31) and (m in [1,3,5,7,8,10,12] )  )   OR
         ( ( j=30) and (m in [4,6,9,11])  )      OR
         ( ( j=29) and (m = 2)  )      OR
         ( ( j=28) and (m = 2) and ( A mod 4 <> 0)  )  then
 begin
          j:= 1 ;
          m:= m+1;
          end
 else
 j:=j+1;
 writeln(j , ' / ',m,' / ',a);
end.







