program sujet7;
uses wincrt;
 var a,b:integer;
 procedure saisir(var a,b:integer);
 begin
     repeat
        write('donner a : '); readln(a);
     until a in [2..100];
     repeat
        write('donner b : '); readln(b);
     until b in [2..100];
 end;
 procedure calculer(a,b:integer);
 var p:integer;
 begin



 write(p);
 end;
begin
    saisir(a,b);
    calculer(a,b);
    
end.