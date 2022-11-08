program sujet8;
uses wincrt;
type tab=array[1..20] of string;
var t:tab; n,max:integer;

procedure remplir(var t:tab;var n:integer);
var
i:integer;
      function verifier(ch:string):boolean;
      var
      i:integer;test:boolean;
      begin
          i:=0;
          repeat
          i:=i+1;
               test:=ch[i] in ['A'..'Z',' '];
          until (i=length(ch)) or (test=false);
          verifier:=test;
      end;    
begin
    repeat
         write('donner n :');readln(n);
    until n in [5..20];
    for i:=1 to n do
    repeat
         write('T[',i,']=');readln(t[i]);
    until verifier(t[i])=true
end;
function nbre_voy(ch:string):integer;
          var
          i,nb:integer;
          begin
              nb:=0;
              for i:=1 to length(ch) do
              if ch[i] in ['A','E','I','O','U','Y'] then
              nb:=nb+1;

              nbre_voy:=nb;
          end;
function voyellemax(t:tab;n:integer):integer;
var
i:integer;
          
begin
max:=nbre_voy(t[1]);
for i :=2 to n do
if nbre_voy(t[i])> max then
max:=nbre_voy(t[i]);

voyellemax:=max;
end;
procedure afficher(t:tab;n,max:integer);
var
i:integer;
begin
     for i :=1 to n do
         if nbre_voy(t[i])= max then
            writeln(t[i]);
end;


begin
    remplir(t,n);
    max:=voyellemax(t,n);
    afficher(t,n,max);
end.