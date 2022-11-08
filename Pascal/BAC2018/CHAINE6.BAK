program Exercice6;
uses wincrt;    
 var n:string; i,d,m,e,s:integer; test :boolean;


begin
{*** Saisir N ****** }
 repeat
 write('donner n : ');readln(n);
        i:=0;
        repeat
        i:=i+1;
        test:=n[i] in ['0'..'9'];
        until (i=length(n)) or (test =false);  

 until(length(n)=15) and (test=true);


    s:=0;
      for i:=1 to length(n) do
      begin
          val(n[i],m,e);
          if i mod 2 <> 0 then s:=s+m
          else
          begin
              d:=m*2;
              if d>=10 then d:=d div 10 + d mod 10;
              s:=s+d;
          end;

      end;

       if s mod 10 =0 then write('valide ')
       else write('non valide');
end.