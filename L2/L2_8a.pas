program L2_8;
{�������� �� ����� ������� �������� ������� ��� y=a^x ��� x, ������������� �� � �� b � ����� h}
{������ �������; 8 �������; ��������� ���������: 31.09.2011}
var
   x: real; {�������} {�� ���� �������}
   b: real; {�� ���� �������}
   h: real; {���}
   a: real; {o�������� �������}
begin
writeln('������� x(������ �������), b(�� ����), h(���), a(��������� �������)');
readln(x, b, h, a);
if b<x then
begin
     while b<=x do
     begin
         writeln('-----------');
         writeln('| ', exp(ln(a)*x):3, ' |'); {stepen'}
         x:=x-h;
     end;
     end
else
begin
     while x<=b do
     begin
         writeln('-----------');
         writeln('| ', exp(ln(a)*x):3, ' |'); {stepen'}
         x:=x+h;
     end;
end;
end.