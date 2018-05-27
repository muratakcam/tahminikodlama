clear all
clc
%Read the input image
A=imread('im.jpg');
figure,imshow(A);
 A=double(A);
display(A);
e=A;
%Perform prediction error
for i = 2:size(A,1)
    for j = 2:size(A,2)
        e(i,j)=e(i,j)-A(i,j-1)-A(i-1,j);
    end
end
display(e);
figure,imshow(uint8(e));

d=e;
for i = 2:size(A,1)
    for j = 2:size(A,2)
        d(i,j)=d(i,j-1)+d(i-1,j)+e(i,j);
    end
end

%Decompressed Image
figure,imshow(uint8(d));