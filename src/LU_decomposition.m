%Tạo A ở workspace để chương trình nhận dạng
function f(A)
%Input: ma tran vuong A
%Output: ma tran tam giac tren U va ma tran tam giac duoi don vi L
A=input('Nhap ma tran A= ');%Nhap ma tran A
[m,n]=size(A);
U=A;
L=zeros(n);
if U(1,1)==0 error('Nhap lai ma tran khac');
end;
%Tim U,L
for i=1:n
L(i,i)=1;
L(i,1)=A(i,1)/A(1,1);
end;
for k=2:n
for i=k:n
for j=k-1:n
U(i,j)=U(i,j)-U(k-1,j)*L(i,k-1);
end;
L(i,k)=U(i,k)/U(k,k);
end;
if U(k,k)==0
disp('U=');disp(U);
disp('i=');disp(k);
error('hoan doi hang i voi hang khac');
end;
end;
format rat;%Hien ket qua duoi dang so thap phan
disp('A=');disp(A);
disp('U=');disp(U);
disp('L=');disp(L);