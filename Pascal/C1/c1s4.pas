program sujet4;
uses wincrt;
procedure afficher;
	var n:integer;
    procedure verifier (n:integer);
var
u,c,d,m,s,pu,pd,pc,pm,k:integer;

begin
	  m:= n div 1000;
        c:=n div 100 mod 10;
        d:= n div 10 mod 10;
        u:=n mod 10;

        k:=0;  s:=0;
        pm:=1;
        pc:=1;
        pd:=1;
        pu:=1;
        repeat
        k:=k+1;
        pm:=pm*m;
        pc:=pc*c;
        pd:=pd*d;
        pu:=pu*u;

        s:=pm+pc+pd+pu;
        until (k=5) or (s=n) ;

        if (s=n) then writeln('n=',n,' et k=', k);
	
	
end;
begin
    for n:=1000 to 9999 do
    
      verifier(n);

end;
begin
afficher;
end.