program sujet9;
uses wincrt;
type
tab=array[1..20] of integer;
var
n,p:integer;t:tab;
     procedure saisir1(var n:integer);
     begin
         repeat
              write('n=');readln(n);
         until n in [5..20];
     end;

     procedure remplir(var t:tab;n:integer);
     var
     i:integer;
     begin
         for i:=1 to n do
         t[i]:=random(9000)+1000;
     end;
     procedure afficher( t:tab;n:integer);
     var
     i:integer;
     begin
            for i:=1 to n do
            write(t[i],' | ');
     end;
     procedure saisir2(var p:integer);
     begin
          repeat
              write('p=');readln(p);
         until (p >=1000) and (p<=9999);
     end;
     procedure verifier(t:tab; n,p:integer);
     var
     i:integer;test:boolean;
     begin
     i:=0;
     repeat
     i:=i+1;
     test:=  p=t[i];
     until(i=n) or(test=true);
     if test=true then write('totale')
     else
     begin
          i:=0;
     repeat
     i:=i+1;
     test:=  p div 10 =t[i] div 10;
     until(i=n) or(test=true);
     if test=true then write('partielle')
     else write('nulle');
     end;

     end;

begin
randomize;
    saisir1(n);
    remplir(t,n);
    afficher(t,n);
    saisir2(p);
    verifier(t,n,p);
end.