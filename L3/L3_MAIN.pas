program bebebe;
var
xnew, xold, eps:real; {������, ������-1 ��� ���������, ��������}
i: integer; {������� ���������� ��������}
f: boolean; {����}
begin
writeln('������� ��������� ����������� ��������� tg(1,5773�) - 2,3041� = 0 � �������� ���������� eps');
readln(xnew, eps);
i:=0;
f:=false;
while ((abs(((sin(1.5773*xnew)/cos(1.5773*xnew))-2.3041*xnew)/(1/(sqr(cos(xnew)))-2.3041*xnew)-((sin(1.5773*xold)/cos(1.5773*xold))-2.3041*xold)/(1/(sqr(cos(xold)))-2.3041*xold)))>eps) do
begin
    xnew:=((sin(1.5773*xold)/cos(1.5773*xold))-2.3041*xold)/(1/(sqr(cos(xold)))-2.3041*xold); {����������� ���������}
    inc(i);
end;
writeln('������ �����', xnew);
writeln('������ ������ �� ', i, ' ��������(-�)');
end.