program sujet12;
uses wincrt;
var num,ch1,ch2:string;
r,num2:string; i,nb:integer; c,rep:char;

begin
    randomize;
    str(random(9000)+1000,ch1);
    str(random(9000)+1000,ch2);
    num:=ch1+ch2;
         R:='--------';nb:=0;
Repeat
nb:=nb+1;
     repeat
     write('Proposer un chiffre ? '); readln(c);
     until c in ['0'..'9'];

     for i:=1 to 8 do
      if num[i]=c then R[i]:=c ;
     writeln('Le numéro de téléphone est : ',R);

     repeat
     write('Voulez vous proposer un numéro ?'); readln(rep);
     until upcase(rep) in ['O','N'];
UNTIL (upcase(rep)='O') or( nb=5) or (pos('-',r)=0);
     write('Proposer un numéro : '); readln(num2);
     if num=num2 then writeln('Bravo! Vous avez gagné')
     else  writeln('Désolé! vous avez perdu');
end.