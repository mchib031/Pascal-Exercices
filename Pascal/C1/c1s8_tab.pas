program sujet8;
uses wincrt;
type tab=array[1..20] of string;
var n:integer; t:tab;
procedure saisir(var n:integer);
begin
    repeat
        write('donner : '); readln(n);
    until n in [5..20];
end;
procedure remplir(var t:tab; n:integer);
var i,j:integer; test:boolean;
begin
   for i:=1 to n do
   repeat
         write('T[',i,']=');readln(t[i]);

         j:=0;
         repeat
         j:=j+1;
         test:=t[i][j] in ['A'..'Z',' '];
         until (j=length(t[i])) or (test=false);

   until (test=true) and (length(t[i]) in [1..20]);
end;

procedure afficher(t:tab;n:integer);
type tab2= array[1..20] of integer;
var v: tab2;i,j,nb,max:integer;
 begin
     for i:=1 to n do
     begin
     nb:=0;
     for j:=1 to length(t[i]) do
         if t[i][j] in ['A','E','I','O','U','Y'] then
         nb:=nb+1 ;

         v[i]:=nb;
     end;
     max:=v[1];
     for i:=2 to n do
     if v[i] >max then max :=v[i];

     for i:=1 to n do
     if v[i]=max then
        writeln(t[i]);
 end;
   {*** Prog principal****}
begin
    saisir(n);
    remplir(t,n);
    afficher(t,n);
end.