program sujet11;
uses wincrt;
var p,q:integer;ph:string;
procedure lecture (var ph :string);
var i:integer; test: boolean;
begin
      repeat
           write('donner ph : '); readln(ph);
                         i:=0;
                         repeat
                              i:=i+1;
                              test:=ph[i] in ['A'..'Z',' '];
                         until (i=length(ph)-1) or (test=false);

      until (ph[length(ph)]='.') and (test=true);
end;
procedure saisir(var x:integer);
begin
    repeat
         write('donner un entier : '); readln(x);

    until x in [2..10]
end;
procedure crypter(ph:string;p,q:integer);
var
i,j,k:integer;
begin
     for k:=1 to length(ph) do
     if ph[k] in ['A'..'Z'] then
     begin
          i:=ord (ph[k])-64;
          j:=(p*i+q) mod 26+1;
          ph[k]:=chr(j+64);
     end;
     write(ph);
end;


begin
    lecture (ph);
    saisir(p);
    saisir(q);
    crypter(ph,p,q) ;
end.