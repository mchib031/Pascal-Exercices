program Exercice9_2;
uses wincrt;    
 var
 x,y,chp:string;
 double,p,d,g,e:integer;  
begin
{******* Saisir les deux codes X et Y   ****** }
        write('x : ');readln(x);
        write('Y: ');readln(Y);               
  {******* D�terminer produit  ****** }
val(x[1], g, e);
double := g* 2;
if double >=10 then double := double div 10 + double mod 10;

val(x[13], d , e);
p:= double * d;
str(p,chp);

p:= pos (chp, y);
if (p=0) then write('D�saccord')
else
Begin
    delete (y,1, p);
    if pos (chp,y) <>0  then
       write('accord')
    else
        write('d�saccord');
end;
end.







