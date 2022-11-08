program sujet1;
uses wincrt;
type tab=array[1..30] of integer;
var n,p:integer; t:tab;
procedure saisir1(var n:integer);
begin
     repeat
            write('donner n :'); readln(n);
     until n in [5..30];
end;
procedure remplir(var t:tab; n:integer);
var i:integer;
begin
      for i:=1 to n do
      begin
      t[i]:=random(1000)+1;
      write(t[i],'  ');
      end;
end;
procedure saisir2(var p:integer;n:integer);
begin
       repeat
            write('donner p :'); readln(p);
     until p in [1..n];
end;
procedure verifier(p:integer;t:tab;n:integer);
var i,j,s:integer;
begin
     i:=p;
     repeat
     i:=i-1;
     s:=s+t[i];
     until(i=1) or (s=t[p]);
     if (s=t[p]) then
     begin
        for j:=p-1 downto i do
        write(t[i],',');
     end
     else
     write('condition non vérifiée');
end; 
begin
    saisir1(n);
    remplir(t,n);
    saisir2(p,n);
    verifier(p,t,n);
end.



