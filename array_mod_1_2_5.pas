// �������� ������ n-�������, ������� ����� ������� �� 7 � �������� 1,2,5?
program program1;
var
   numbers: array [0..1000] of integer;
   i: integer;
   s1,s2,s5: integer;
   x: real;
begin
     s1 := 0;
     s2 := 0;
     s5 := 0;
for i:=0 to 333 do  //��������� ������ ������� �� 0 �� 20
    begin
         numbers[i] := i;
         inc(i);
    end;
for i:=0 to 333 do
    begin
         if numbers[i] mod 7 = 1 then
            inc(s1);
         if numbers[i] mod 7 = 2 then
            inc(s2);
         if numbers[i] mod 7 = 5 then
            inc(s5);
end;
    writeln('�����, ��������� �� 7 � �������� 1 --- ', s1);
    writeln('�����, ��������� �� 7 � �������� 2 --- ', s2);
    writeln('�����, ��������� �� 7 � �������� 5 --- ', s5);
    writeln('���������� �����,������� ������� �� 1, 2 � 5 � �������� ', s1 + s2 + s5);
end.