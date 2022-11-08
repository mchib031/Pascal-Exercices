program sujet2;
uses wincrt;
var n:string;
procedure saisir(var n:string);
var  i:integer; test:boolean;
begin
repeat
      write('donner n : ');readln(n);
                    i:=0;
                    repeat
                    i:=i+1;
                    test:=n[i] in ['0'..'9'];
                    until (i=length(n)) or (test=false);
until (length(n)=13) and (test=true);
end;



procedure verifier(n:string);
var
q:string; cc,e,r,s,p:integer;
          function somme(q:string):integer;
          var i,m,s,e:integer;
          begin
          s:=0;
              for i:=1 to 12 do
              begin
                  val(q[i],m,e);
                   if i mod 2=0 then s:=s+m*3
                   else s:=s+m
              end;
              somme:=s;
          end;
begin
q:=copy(n,1,12);
val(n[13],cc,e);
s:=somme(q);
r:= s mod 10;
p:=10-r;
if p=cc then write('valide')
else write('non valide');
end;

begin
    saisir(n);
    verifier(n);
end.


