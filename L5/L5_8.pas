program L5_8;
{���� ������������������ ����� a1, a2, ..., an.
 ������� ������ ����������� �� ������ �������� ������������������.}
var
A: array [1..100] of real;
n, i: integer;
max: real;
begin
writeln('������� ���������� ��������� �������');
readln(n);
writeln('������� �������� �������');
for i:=1 to n do
    read(A[i]);
writeln('����� ��������� ��� ��������');
for i:=1 to n do
    write(A[I], ' ');
max:=abs(A[1]);
for i:=1 to n do
begin
    if max < abs(A[i]) then
    max:=abs(A[i])
end;
writeln;
writeln('������ ����������� �� ������ �������� ������������������ ����� ', max);
end.
