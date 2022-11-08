program MonoEn_v;
uses wincrt;
type tab = array[1..20] of string;
var n,i,j:integer;  t:tab;v:char;

procedure saisir_v(var v:char);
begin
    
end;
procedure afficher(n:integer; t:tab;v:char);

begin
 

end;

begin
repeat
    readln(n);
    until n in [1..20];
      for i:=1 to n do
    repeat
    write('donner une chaine de caractères : ');
    readln(t[i]);
    j:=0;
    repeat
    j:=j+1;
    until not(upcase(t[i][j]) in ['A'..'Z']) or ( j=length(t[i]));
    until  (upcase(t[i][j]) in ['A'..'Z']) and (length(t[i]) in [3..15]);
    
    saisir_v(v);

    afficher(N,T,V);

end.